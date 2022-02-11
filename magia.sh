#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   	echo "Usa el comando siendo Super Usuario (Root), o haz Sudo" 
   	exit 1
else
        #Actualizando el sistema
        echo " /-----------------------------\ "
        echo "Actualizando Ubuntu y todos sus paquetes"
        echo " \-----------------------------/ "
        sleep 5s
        sudo apt upgrade -y
        sudo apt update -y
        sleep 5s
        #Añadiendo todos los repositorios
        echo " /-----------------------------\ "
        echo "Añadiendo los repositorios necesarios"
        echo " \-----------------------------/ "
        sleep 5s
        sudo add-apt-repository http://archive.ubuntu.com/ubuntu -y
        sudo add-apt-repository ppa:nilarimogard/webupd8 -y
        sudo apt update -y
        sleep 5s
        #Descargando todo
        echo " /-----------------------------\ "
        echo "Descargando todo, Ya casi estamos!"
        echo " \-----------------------------/ "
        sleep 5s
        sudo apt install git -y
        sudo apt install nano -y
        sudo apt install vifm -y
        sudo apt install xorg-xrandr -y
        sudo apt-get install curl -y
        curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
        sudo apt-get install speedtest -y
        echo " /-----------------------------\ "
        echo " /-----------------------------\ "
        echo " ----------TODO LISTO!---------- "
        echo " \-----------------------------/ "
        echo " \-----------------------------/ "
    fi
exit 1
