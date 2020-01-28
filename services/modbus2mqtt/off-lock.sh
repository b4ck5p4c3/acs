#!/usr/bin/env bash
while true; do
    ./mqtt-send -t modbus/endpointpp/set/red_door_lock -m False
    sleep 1
done

