# Введение
Автоматизация хакспейса построена на message bus с использованием MQTT. 

Мы используем:
1. Mosquitto как локальный MQTT-брокер для message bus
2. Node-RED для выполнения сценариев принятия решений
3. [acs-modbus2mqtt](https://github.com/b4ck5p4c3/acs-modbus2mqtt) для организации шлюза **Modbus-MQTT**
4. [acs-provision](./provision) для провижининга конечных стэйтлесс устройств (RemoteIO) 
5. [acs-misc](./misc) как набор утилит для работы с автоматизацией

Помимо необходимых сервисов, к сервисной шине так же подключается Telegram-бот, и прочие некритичные сервисы.

Система автоматизации и контроля доступа Бэкспейса одновременно достаточно проста и специфична, поэтому
имеет смысл рассматривать её только как референс, а не как готовое решение.

# Деплой сервисов автоматизации
Для деплоя потребуется машина с установленным Mosquitto.
```bash
# Исходим из того, что автоматизация работает из под пользователя 
# acs с домашней директорией /home/acs
whoami # acs
pwd # /home/acs

# Выделяем сервисы в отдельную директорию
mkdir app && cd app

# Клонируем сервисы
git clone https://github.com/b4ck5p4c3/acs acs
git clone https://github.com/b4ck5p4c3/acs-modbus2mqtt modbus2mqtt

# Устанавливаем зависимости modbus2mqtt
cd modbus2mqtt
pip3 install -r requirements.txt
cd ~acs/app

# Устанавливаем зависимости provision
cd acs/software/provision
pip3 install -r requirements.txt
cd ~acs/app

# Если вы из Бэкспейса — cклонируйте репозиторий с секретами и 
# проследуйте инструкциям из INSTALL.md для применения конфигураций
git clone https://github.com/b4ck5p4c3/acs-secrets config

# ... иначе, используйте примеры конфигураций из каждого отдельного сервиса

# Установите systemd-сервисы из `software/systemd` этого репозитория
cp acs/software/systemd/* /etc/systemd/system/

# Исправьте креденшелы от MQTT-брокера в acs-modbus2mqtt.service
nano /etc/systemd/system/acs-modbus2mqtt.service

systemctl enable acs-endpoint-provisioning.service
systemctl enable acs-modbus2mqtt.service
```

После деплоя вспомогательных сервисов, переходите к деплою ядра принятия 
решений на Node-RED: [./nodered/README.md](./nodered/README.md)
