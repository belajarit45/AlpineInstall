#!/data/data/com.termux/files/usr/bin/bash

export REPO_URL=https://github.com/belajarit45/AlpineInstall.git
export BRANCH=main

pkg update -y
pkg install -y git

git clone "${REPO_URL}"
cd docker-qemu-arm
git checkout "${BRANCH}"

#!/data/data/com.termux/files/usr/bin/bash

pkg update
pkg install -y expect curl qemu-utils qemu-common qemu-system-x86_64-headless openssh


if [ ! -f "config.env" ]; then
    # get the default config file
    cp config.sample config.env
fi

source config.env

expect -f installqemu.expect

echo "to start your new vm:"
echo "  cd \$INSTALLATION_DIR && ./startqemu.sh"


