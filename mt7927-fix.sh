#!/usr/bin/env bash
# Treiber laden
modprobe mt7925e
# ID registrieren (falls noch nicht bekannt)
echo "14c3 7927" > /sys/bus/pci/drivers/mt7925e/new_id || true
# Den Chip manuell an den Treiber binden
echo "0000:0e:00.0" > /sys/bus/pci/drivers/mt7925e/bind || true
