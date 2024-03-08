#!/bin/bash
if (($EUID ==0)); then
   echo "This script must be run not by root! Press Enter to contnue."
   read a
   echo "Press Enter to contnue."
   read b
fi
echo "Installing python library qrcode."
pip install qrcode
echo 'Done you can run pyqr in terminal to encode text in QR-code.'
