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

или скопировать `env.example` в `.env` и указать все опции в нем, тогда при запуске опции можно не указывать:

```
node ./build
```

### config

Опции можно также передать через переменные окружения с префиксом `SWYNCA`:

```
--listen-port 9090              => SWYNCA_LISTEN_PORT=9090
--users-file users-file.json    => SWYNCA_LISTEN_PORT=users-file.json
```

Можно подложить файл `.env` в рабочую директорию.

### На малине

На малине СКУДа сервис крутится под PM2.
Нужно свичнутся в ползователя `acs` и запустить / перезапустить под ним.

```
su acs
cd ~
cd app/acs/software/swynca
git pull
npm install
npm run build
pm2 restart ./build
```
