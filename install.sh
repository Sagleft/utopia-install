#!/bin/bash
apt-get update
apt-get install wget -y
wget https://update.u.is/downloads/linux/utopia-latest.amd64.deb
apt-get install gdebi-core libx11-xcb1 libgl1-mesa-glx libpulse-mainloop-glib0 libgtk-3-dev -y
dpkg -i utopia-latest.amd64.deb
apt-get install -f -y
rm -rf utopia-latest.amd64.deb

echo "creating new account.."
export XDG_RUNTIME_DIR=/tmp/runtime-root
/opt/utopia/messenger/utopia --headless --create --db=/home/account.db --pwd=password --configPath=/home/utopia.cfg
