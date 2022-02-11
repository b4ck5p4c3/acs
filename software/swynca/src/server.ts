import { UsersDatabase } from "./users";
import http from "http";
import micro, { send } from "micro";

export async function serve(users: UsersDatabase, port: number, hostname: string): Promise<http.Server> {
    const server = micro(function (req, res) {
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
