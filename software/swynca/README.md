## swynca

Сервис получает пользователей из Auth0, кэширует и предоставляет локальным сервисам хакспейса.

### build

```
nvm install
npm install
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

### На малине

На малине СКУДа сервис крутится под PM2.
Нужно свичнутся в пользователя `acs` и запустить / перезапустить сервис под ним.

```shell
# переключаемся на пользователя acs
su acs

# переходим в каталог приложения
cd ~/app/acs/software/swynca

# стягиваем последее состояние из системы контроля версий
git pull

# устанавливаем зависимости (node.js & npm на малине установлены system wide)
npm install

# запускаем сборку (приложение написано на TypeScript и требует компиляции)
npm run build

# дергаем глобально установленный pm2 для перезапуска сервиса
# состояние сервисов pm2 трэкает per calling user, сервис swynca крутится под пользователем acs
pm2 restart ./build
```
