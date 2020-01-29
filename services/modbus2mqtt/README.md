1. "start.sh" starts modbus2mqtt with all neccessary arguments.

2. MQTT broker can be accessed via both MQTT / MQTTS protocols (mqtt://mqtt.internal.0x08.in or mqtts://mqtt.internal.0x08.in)

3. Authorization is required. Modbus gateway credentials:
 - username: modbus-gateway
 - password: see keychain

4. Simple snippet to subscribe to all modbus-related messages:
 - mosquitto_sub -t "#" -h mqtt.internal.0x08.in -p 8883 --cafile /etc/mosquitto/ca_certificates/ca.pem -u modbus-gateway -P <password> -v

Notice that mqtt.internal.0x08.in works only in the b4cksp4ce's local network!
