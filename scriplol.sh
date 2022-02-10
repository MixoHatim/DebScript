#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   	echo "Usa el comando siendo Super Usuario (Root), o haz Sudo" 
   	exit 1
else
        #Actualizando el sistema
        echo "Actualizando Ubuntu y todos sus paquetes"
        sleep 5s
        sudo apt upgrade
        sudo apt update
        sleep 5s
        #Añadiendo todos los repositorios
        echo "Añadiendo los repositorios necesarios"
        sleep 5s
        sudo add-apt-repository http://archive.ubuntu.com/ubuntu
        sudo add-apt-repository ppa:nilarimogard/webupd8 -y
        sudo apt update
        sleep 5s
        #Descargando todo
        echo "Descargando todo, Ya casi estamos!"
        sleep 5s
        sudo apt install Git
        sudo apt install Nano
        sudo apt install Vifm
        sudo apt install xorg-xrandr
        sudo apt-get install curl
        curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
        sudo apt-get install speedtest
    fi
exit 1
