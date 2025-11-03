# Portable Secure OS

This project demonstrates a lightweight portable Linux OS with added security.

## Features
- Firejail sandboxing for applications
- UFW firewall with strict defaults
- Scripts to build a custom ISO

## How to use
1. Download a base ISO (Alpine Linux or Ubuntu)
2. Run `scripts/setup-firejail.sh` and `scripts/setup-ufw.sh` to apply security
3. Run `scripts/build-iso.sh` to create a bootable ISO with configurations

## Notes
- This is a demonstration project for learning OS customization and security.
