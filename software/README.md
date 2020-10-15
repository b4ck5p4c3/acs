# Введение
Автоматизация хакспейса построена на message bus с использованием MQTT. 

Мы используем:
1. Node-RED для выполнения сценариев принятия решений [(конфигурация)](https://github.com/b4ck5p4c3/acs-automation)
3. [acs-modbus2mqtt](https://github.com/b4ck5p4c3/acs-modbus2mqtt) для организации шлюза **Modbus-MQTT**
4. [acs-translator](https://github.com/b4ck5p4c3/acs-mqtt-translator) для формализации сообщений на сервисной шине
5. [acs-provision](https://github.com/b4ck5p4c3/acs-provision) для провижининга конечных стэйтлесс устройств (RemoteIO) 

Помимо необходимых сервисов, к сервисной шине так же подключается Telegram-бот, и прочие некритичные сервисы.

Система автоматизации и контроля доступа Бэкспейса одновременно достаточно проста и специфична, поэтому
имеет смысл рассматривать её только как референс, а не как готовое решение.

# Деплой сервисов автоматизации
Для деплоя потребуется машина с установленным MQTT-брокером.
```bash
# Исходим из того, что автоматизация работает из под пользователя 
# acs с домашней директорией /home/acs
whoami # acs
pwd # /home/acs

# Выделяем сервисы в отдельную директорию
mkdir app && cd app

# Клонируем сервисы
git clone https://github.com/b4ck5p4c3/acs-modbus2mqtt modbus2mqtt
git clone https://github.com/b4ck5p4c3/acs-provision provision
git clone https://github.com/b4ck5p4c3/acs-translator translator
git clone https://github.com/b4ck5p4c3/acs acs
git clone https://github.com/b4ck5p4c3/acs-misc misc

# Устанавливаем зависимости modbus2mqtt
cd modbus2mqtt
pip3 install -r requirements.txt
cd ..

# Устанавливаем зависимости provision
cd provision
pip3 install -r requirements.txt
cd ..

# Устаналиваем зависимости translator
cd translator
npm install
cd ..

# Если вы из Бэкспейса — cклонируйте репозиторий с секретами и 
# проследуйте инструкциям из INSTALL.md для применения конфигураций
git clone https://github.com/b4ck5p4c3/acs-secrets config

# ... иначе, используйте примеры конфигураций из каждого отдельного сервиса

# Установите systemd-сервисы по инструкции из `software/systemd` этого репозитория
cp acs/software/systemd/* /etc/systemd/system/
systemctl enable acs-endpoint-provisioning.service
systemctl enable acs-lockoff-pulsar.service
systemctl enable acs-modbus2mqtt.service
systemctl enable acs-translator.service
```

После деплоя вспомогательных сервисов, переходите к деплою ядра принятия 
решений на Node-RED: [acs-automation](https://github.com/b4ck5p4c3/acs-automation)
