# My personal script to *run and go* any Debian based distro
## What it does?
First just make anything update
```
sudo apt upgrade -y
sudo apt update -y
```
Second, to be ***WSL*** friendly, it adds all the Ubuntu repositorys and some for the software it's going to be installed
```
sudo add-apt-repository http://archive.ubuntu.com/ubuntu -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt update -y
```
And the most important thing, install

***The next software is what is being installed***
- Nano
- Vifm
- Xrandr
- Curl
- Speedtest for CLI
- Tty Clock
- Cava
```
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
```
