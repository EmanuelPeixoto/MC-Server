#!usr/bin/env bash

MINECRAFT_DIR="/var/lib/minecraft"
REPO_DIR="/var/lib/minecraft/.git"

if [ ! -d "$REPO_DIR" ]; then
    cd "$MINECRAFT_DIR"
    git init
    git remote add origin git@github.com:EmanuelPeixoto/MC-Server.git
fi

cd "$MINECRAFT_DIR"
git add .
git commit -m "Backup automático - $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
