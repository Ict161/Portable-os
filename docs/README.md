# 🧳 Portable Linux Mint with Persistence & Firewall

This project documents how to set up a **portable, persistent Linux Mint OS** on a USB drive using **Ventoy**, with added **firewall protection** and security tweaks.

## 🧠 Overview

This project allows you to:
- Boot Linux Mint from a USB stick
- Save data and settings (persistence)
- Protect your system with a custom firewall
- Carry your OS anywhere securely

---

## ⚙️ Requirements

- A USB drive (at least 8 GB, 16 GB recommended)
- Ventoy (https://www.ventoy.net)
- Linux Mint ISO (https://linuxmint.com)
- A working Linux or Windows PC to prepare the drive

---

## 🚀 Setup Guide

### 1. Install Ventoy on USB

Follow the [official Ventoy guide](https://www.ventoy.net/en/doc_start.html) to install Ventoy to your USB drive.

### 2. Add Linux Mint ISO

Copy your downloaded Linux Mint ISO file to the Ventoy USB.

### 3. Enable Persistence

Use the script below or follow the detailed guide in `docs/persistence_explained.md`.

```bash
sudo bash setup/create_persistent_usb.sh /dev/sdX linuxmint.iso
