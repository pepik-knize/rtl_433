#!/bin/bash
source /home/joe/secrets/secrets.sh
export set MQTT_USERNAME=$MQTT_USERNAME
export set MQTT_PASSWORD=$MQTT_PASSWORD
date
echo starting up
echo username: $MQTT_USERNAME
# rtl_433 -F json -M utc -M level -M protocol -f 915M -f 433.92M -H 120 -Y classic -F mqtt://192.168.0.181,retain=0
rtl_433 -c /home/joe/git/rtl_433/conf/rtl_433.conf
