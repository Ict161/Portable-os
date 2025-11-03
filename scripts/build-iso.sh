#!/bin/bash
# Simple script to copy ISO contents and add configs
# Requires xorriso installed

ISO_NAME="alpine.iso"  # or your downloaded ISO
WORKDIR="custom-os"

echo "[*] Creating work directory..."
mkdir -p $WORKDIR
sudo mount -o loop $ISO_NAME $WORKDIR

# Copy configs
mkdir -p $WORKDIR/configs
cp ../configs/firejail.profile $WORKDIR/configs/
cp ../configs/ufw.rules $WORKDIR/configs/

# Unmount original ISO
sudo umount $WORKDIR

# Build new ISO
xorriso -as mkisofs \
  -o ../my-secure-os.iso \
  -isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin \
  -c isolinux/boot.cat \
  -b isolinux/isolinux.bin \
  -no-emul-boot -boot-load-size 4 -boot-info-table \
  $WORKDIR

echo "[+] Custom ISO built: my-secure-os.iso"
