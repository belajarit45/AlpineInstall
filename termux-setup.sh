#!/data/data/com.termux/files/usr/bin/bash

export REPO_URL=https://github.com/belajarit45/AlpineInstall.git
export BRANCH=main

pkg update -y
pkg install -y git

git clone "${REPO_URL}"
cd AlpineInstall
git checkout "${BRANCH}"

chmod +x install.sh
./install.sh
