import { UserPassSpec, UserPassType, UsersDatabase } from "./users";
import type { IncomingMessage, ServerResponse, Server } from "http";
import micro, { send, json } from "micro";
import Ajv, { JTDDataType, JTDSchemaType } from "ajv/dist/jtd";

const updatePassPayloadSchema = {
    definitions: {
        pass_spec: {
            properties: {
                type: { type: "string" },
                value: { type: "string" },
            },
        },
    },
    properties: {
        id: { ref: "pass_spec" },
        action: { type: "string" },
        pass: { ref: "pass_spec" },
    },
} as const;
type UpdatePassPayload = JTDSchemaType<typeof updatePassPayloadSchema>;
const ajv = new Ajv();
const validateUpdatePassPayload = ajv.compile(updatePassPayloadSchema);

function isUserPass(value: { type: string; value: string }): value is UserPassSpec {
    return value.type === UserPassType.PAN || value.type === UserPassType.UID || value.type === UserPassType.LEGACY_UID;
}

async function handleUpdatePass(users: UsersDatabase, req: IncomingMessage, res: ServerResponse): Promise<void> {
    const payload = await json(req);
    if (!validateUpdatePassPayload(payload) || !isUserPass(payload.id) || !isUserPass(payload.pass)) {
        send(res, 400, "invalid payload");
        return;
    }

    const user = users.findByPass(payload.id);
    if (user === null) {
        send(res, 401, "user not found by the provided pass");
        return;
    }

    switch (payload.action) {
        case "add":
            users.addPass(user, payload.pass);
            send(res, 200, { result: "ok" });
            break;
        case "remove":
            users.removePass(user, payload.pass);
            send(res, 200, { result: "ok" });
            break;
    }
}

export async function serve(users: UsersDatabase, port: number, hostname: string): Promise<Server> {
    const server = micro(async function (req, res) {
        switch (req.url) {
            case "/v0/pan.txt":
                send(res, 200, users.getPANListText());
                break;
            case "/v0/ids.txt":
                send(res, 200, users.getUIDListText());
                break;
            case "/v0/legacy_ids.txt":
                send(res, 200, users.getLegacyUIDListText());
                break;
            case "/v0/update_pass":
                await handleUpdatePass(users, req, res);
                break;
            default:
                send(res, 404, "nothing here, go away");
        }
    });

    return new Promise((resolve, reject) => {
        server.listen(port, hostname, () => {
            resolve(server);
        });
    });
}
