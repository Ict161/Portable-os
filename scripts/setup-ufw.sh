#!/bin/bash
# Configure basic firewall rules
echo "[*] Installing UFW..."
sudo apt update
sudo apt install -y ufw

echo "[*] Applying firewall rules..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

echo "[+] UFW setup complete!"
