#!/bin/bash
DIR=$(dirname $0)
/usr/bin/python3 \
  -u ${DIR}/spicierModbus2mqtt/mo2.py \
  --rtu /dev/ttyS0 \
  --rtu-baud 115200 \
  --rtu-parity none \
  --mqtt-host mqtt.internal.0x08.in \
  --mqtt-port 8883 \
  --mqtt-user modbus-gateway \
  --mqtt-pass ${MQTT_PASSWORD} \
  --mqtt-use-tls \
  --mqtt-cacerts /etc/mosquitto/ca_certificates/ca.pem \
  --config ${DIR}/backspace.csv \
  --verbosity 3

