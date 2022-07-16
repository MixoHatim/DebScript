#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   	echo "Can't use the sript, are you sudoing?" 
   	exit 1
else
        #Updating everything
        echo " /-----------------------------\ "
        echo "-------Updating"
        echo " \-----------------------------/ "
        sleep 5s
        sudo apt upgrade -y
        sudo apt update -y
        sleep 5s
        #Adding all the necesary repos
        echo " /-----------------------------\ "
        echo "---Adding the repos"
        echo " \-----------------------------/ "
        sleep 5s
        sudo add-apt-repository http://archive.ubuntu.com/ubuntu -y
        sudo add-apt-repository ppa:nilarimogard/webupd8 -y
        sudo apt update -y
        sleep 5s
        #Downloading
        echo " /-----------------------------\ "
        echo "--------Installing"
        echo " \-----------------------------/ "
        sleep 5s
        sudo apt install git -y
        sudo apt install nano -y
        sudo apt install vifm -y
        sudo apt install xorg-xrandr -y
        sudo apt-get install curl -y
        curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
        sudo apt-get install speedtest -y
        sudo apt-get install tty-clock -y
        apt install libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool automake libiniparser-dev libsdl2-2.0-0 libsdl2-dev
        git clone https://github.com/karlstav/cava.git
        cd ./cava
        ./autogen.sh
        /configure
        make
        cd ~
        echo " /-----------------------------\ "
        echo " /-----------------------------\ "
        echo " ----------Ready to use!---------- "
        echo " \-----------------------------/ "
        echo " \-----------------------------/ "
    fi
exit 1
