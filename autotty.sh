#!/bin/bash

TTY_MARKER="/tmp/tty_active"

function tratamiento_tty() {
    echo "[+] Aplicando tratamiento TTY..."

    # Reinicia la shell como bash interactivo
    script -q -c "bash" /dev/null
}

# Comprobar si ya hay tratamiento activo
if [ -f "$TTY_MARKER" ]; then
    echo "[!] Tratamiento TTY ya existente. Reiniciando..."
    rm "$TTY_MARKER"
    clear
else
    echo "[+] No se detectó tratamiento previo. Aplicando nuevo..."
fi

touch "$TTY_MARKER"
tratamiento_tty
