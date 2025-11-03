#!/bin/bash
# Install firejail and apply basic sandboxing for common apps
echo "[*] Installing Firejail..."
sudo apt update
sudo apt install -y firejail firejail-profiles

echo "[*] Applying Firejail profile..."
mkdir -p ~/.config/firejail
cp ../configs/firejail.profile ~/.config/firejail/default.profile

echo "[+] Firejail setup done!"
