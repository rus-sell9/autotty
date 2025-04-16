#!/bin/bash

echo "[+] Instalando dependencias..."

sudo apt update

DEPS=(rlwrap xterm tmux netcat)

for pkg in "${DEPS[@]}"; do
    if ! dpkg -s "$pkg" &>/dev/null; then
        echo "[+] Instalando $pkg..."
        sudo apt install -y "$pkg"
    else
        echo "[=] $pkg ya está instalado."
    fi
done

echo "[✔] Instalación de dependencias finalizada."
