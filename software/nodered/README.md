## Деплой
Будем исходить из того, что остальные сервисы автоматизации уже развёрнуты.

### Списки доступов
Если вы не используете репозиторий acs-secrets Бэкспейса, скопируйте вручную следующие файлы:
```
examples/uid.txt.automation      =>  /home/acs/app/config/uid.txt.automation
examples/pan.txt.automation      =>  /home/acs/app/config/pan.txt.automation
```

### Деплой NodeRED
1. Установите Node-RED и автозапуск сервиса.
2. Если вы из Бэкспейса, слинкуйте файл `settings.js` согласно `INSTALL.md` в `acs-secrets`.
   Если нет, настройте вручную подключение к MQTT-брокеру.
3. Импортируйте `flowgraphs/main.json`.
4. Вы прекрасны!
