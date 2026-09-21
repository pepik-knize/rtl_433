#!/bin/bash
date
echo starting up
set -euo pipefail

source /home/joe/secrets/secrets.sh
echo username: $MQTT_USERNAME

MQTT_HOST="192.168.0.181"
MQTT_PORT="1883"
#MQTT_URL="mqtt://${MQTT_HOST}:${MQTT_PORT},retain=False"
MQTT_URL="mqtt://${MQTT_HOST}:${MQTT_PORT},retain=False,user=${MQTT_USERNAME},pass=${MQTT_PASSWORD}"

exec rtl_433 \
  -M utc \
  -M level \
  -M protocol \
  -f 915M \
  -Y classic \
  -s 250k \
  -F "$MQTT_URL"
