#!/bin/bash

PWD=$(pwd)
system=$(uname -o)

if [ "${system}" == "Android" ]; then
	location="/data/data/com.termux/files/usr/bin"
else
	location="/bin"
fi

chmod 777 ${PWD}/generador
chmod 777 ${PWD}/diamantes.py
mv ${PWD}/generador ${location}
mv ${PWD}/diamantes.py ${location}
generador
