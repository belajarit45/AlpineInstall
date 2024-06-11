#!/data/data/com.termux/files/usr/bin/bash

export REPO_URL=https://github.com/belajarit45/AlpineInstall.git
export BRANCH=main

pkg update -y -q
pkg install -y git

git clone "${REPO_URL}"
cd docker-qemu-arm
git checkout "${BRANCH}"

chmod +x install.sh
./install.sh
