#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
apt-get install -y python3 python3-pip
mkdir /opt/pyqr/
cp qr.py /opt/pyqr/qr.py
echo '#!/bin/bash' > /bin/pyqr
echo '/usr/bin/python3 /opt/pyqr/qr.py' >> /bin/pyqr
chmod +x /bin/pyqr
echo 'To finish installation run script ./install-req.sh not by root.'
