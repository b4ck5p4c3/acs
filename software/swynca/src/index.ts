import yargs from "yargs";
import { UsersDatabase } from "./users";
import { serve } from "./server";

async function main(): Promise<void> {
    const args = yargs
        .option("users-file", {
            type: "string",
            demandOption: true,
        })
        .option("users-sync-interval", {
            type: "number",
            description: "how often to request users list from Auth0 (seconds)",
            default: 60,
            coerce(seconds) {
                return seconds * 1000;
            },
        })
        .option("auth0-client-id", {
            type: "string",
            demandOption: true,
        })
        .option("auth0-client-secret", {
            type: "string",
            demandOption: true,
        })
        .option("auth0-domain", {
            type: "string",
            demandOption: true,
        })
        .option("listen-port", {
            type: "number",
            demandOption: true,
        })
        .option("listen-address", {
            type: "string",
            default: "0.0.0.0",
        })
        .parseSync();

    const users = new UsersDatabase(args.usersFile, {
        domain: args.auth0Domain,
        clientId: args.auth0ClientId,
        clientSecret: args.auth0ClientSecret,
    });
    try {
        await users.load();
    } catch (error) {
        if (error.code !== "ENOENT") {
            throw error;
        }
    }

    const auth0UpdateTimer = setInterval(users.updateFromAuth0.bind(users), args.usersSyncInterval);
    const server = await serve(users, args.listenPort, args.listenAddress);

    process.on("SIGINT", () => {
        clearInterval(auth0UpdateTimer);
        server.close();
    });
}

main().catch((error) => {
    console.error(error);
    process.exit(1);
});
