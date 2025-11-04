#!/bin/bash
# Basic firewall setup for Linux Mint Portable

echo "[*] Enabling UFW Firewall..."
sudo apt update
sudo apt install -y ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

echo "[*] Firewall enabled and configured for safe browsing."
