#!/usr/bin/bash

header=`curl -Is http://enhort.mni.thm.de/ | head -1`;
response="Enhort responded with ";
response+=$header;

if ! [[ $header =~ 200 ]]; then
	sudo -u menzel DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -h string:bgcolor:#FF0000 -u critical 'Enhort Error' "$response"
fi


#notify-send 'Enhort Error' "$response"

