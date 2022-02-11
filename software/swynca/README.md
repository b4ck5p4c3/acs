## swynca

Сервис получает пользователей из Auth0, кэширует и предоставляет локальным сервисам хакспейса.

### build

```
nvm install
npm run build
```

### start

```
node ./build \
    --users-file ./users-file.jsons \
    --users-sync-interval 5 \
    --auth0-client-id <M2M app client id> \
    --auth0-client-secret <M2M app client secret> \
    --auth0-domain bksp-development.eu.auth0.com \
    --listen-port 9090 \
    --listen-address 127.0.0.1
```
