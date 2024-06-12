#!/data/data/com.termux/files/usr/bin/bash

export REPO_URL=https://github.com/belajarit45/AlpineInstall.git
export BRANCH=main

pkg install -y git expect
pkg update -y

git clone "${REPO_URL}"
cd docker-qemu-arm
git checkout "${BRANCH}"

chmod +x install.sh
./install.sh
