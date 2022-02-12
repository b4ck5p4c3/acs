import fs from "fs/promises";
import { Client, ManagementClient, ManagementClientOptions } from "auth0";

type User = {
    a0id: string;
    a0nickname: string;
    pan: string;
    legacyUid: string;
    uid: string;
    comment: string;
    updatedAt: string;
    blocked: boolean;
};

function parseUserFromJson(value: string): Partial<User> | null {
    let o = null;
    try {
        o = JSON.parse(value);
        if (typeof o !== "object") {
            o = null;
            throw new Error("Parsed JSON does not represent an object");
        }
    } catch (error) {
        console.error(error);
    }
    return o;
}

export class UsersDatabase {
    private client: ManagementClient;
    private users: Array<User>;

    constructor(private filepath: string, auth0Options: ManagementClientOptions) {
        this.client = new ManagementClient(auth0Options);
        this.users = [];
    }

    async load(): Promise<void> {
        const content = await fs.readFile(this.filepath, { encoding: "utf8" });
        this.users = content
            .split("\n")
            .filter((line) => line.length > 0)
            .map((line): User | null => {
                const u = parseUserFromJson(line);

                if (u === null) {
                    return null;
                }

                return {
                    a0id: u.a0id ?? "",
                    a0nickname: u.a0nickname ?? "",
                    pan: u.pan ?? "",
                    uid: u.uid ?? "",
                    legacyUid: u.legacyUid ?? "",
                    blocked: u.blocked ?? false,
                    comment: u.comment ?? "",
                    updatedAt: u.updatedAt ?? "",
                };
            })
            .filter((u) => u !== null);
    }

    async store(): Promise<void> {
        const content = this.users.map(JSON.stringify.bind(JSON)).join("\n");
        await fs.writeFile(this.filepath, content, { encoding: "utf8" });
    }

    async updateFromAuth0(): Promise<void> {
        const a0users = await this.client.getUsers({ per_page: 100, fields: "user_id,blocked,nickname" });
        const now = new Date().toISOString();
        for (const a0user of a0users) {
            const idx = this.users.findIndex((u) => u.a0id === a0user.user_id);

            if (idx === -1) {
                this.users.push({
                    a0id: a0user.user_id,
                    a0nickname: a0user.nickname,
                    blocked: a0user.blocked === true,
                    uid: "",
                    pan: "",
                    legacyUid: "",
                    comment: `Added from Auth0 by swynca at ${now}`,
                    updatedAt: new Date().toISOString(),
                });
                continue;
            }

            for (const user of this.users) {
                if (user.a0id === a0user.user_id) {
                    user.a0id = a0user.user_id ?? "";
                    user.a0nickname = a0user.nickname ?? "";
                    user.blocked = a0user.blocked === true;
                    user.updatedAt = new Date().toISOString();
                }
            }
        }
        await this.store();
    }

    getPANListText(): string {
        return this.users
            .filter((u) => u.pan.length > 0)
            .filter((u) => !u.blocked)
            .map((u) => `${u.pan},${u.a0nickname} ${u.a0id} ${u.comment}`)
            .join("\n");
    }

    getUIDListText(): string {
        return this.users
            .filter((u) => u.uid.length > 0)
            .filter((u) => !u.blocked)
            .map((u) => `${u.uid},${u.a0nickname} ${u.a0id} ${u.comment}`)
            .join("\n");
    }

    getLegacyUIDListText(): string {
        return this.users
            .filter((u) => u.legacyUid.length > 0)
            .filter((u) => !u.blocked)
            .map((u) => `${u.legacyUid},${u.a0nickname} ${u.a0id} ${u.comment}`)
            .join("\n");
    }
}
