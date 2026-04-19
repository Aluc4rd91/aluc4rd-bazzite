#!/usr/bin/env bash
# Treiber laden
modprobe mt7925e
modprobe btusb

# 2 Sekunden warten, damit der Treiber bereit ist
sleep 2

# ID registrieren (Zuweisung erzwingen)
echo "14c3 7927" > /sys/bus/pci/drivers/mt7925e/new_id || true

# Den Chip manuell binden (an deine Adresse 0e:00.0)
echo "0000:0e:00.0" > /sys/bus/pci/drivers/mt7925e/bind || true
