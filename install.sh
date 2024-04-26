echo 'starting 1/6'
sudo apt update

echo 'starting 2/6'
sudo apt install qemu-kvm virtinst libvirt-clients bridge-utils libvirt-daemon-system tigervnc-standalone-server dwm aqemu -y

echo 'starting 3/6'
cd /; sudo git clone https://github.com/novnc/noVNC

echo 'starting 4/6'
sudo wget -O /tmp/Tiny10_x64_HDA.img https://files.mollomm1.dev/api/public/dl/eHWIyWhJ

echo 'starting 5/6'
sudo mkdir /root/.aqemu; sudo wget -O /root/.aqemu/Tiny_10_x64.aqemu https://files.mollomm1.dev/api/public/dl/fCJ-7xlS

echo 'starting 6/6'

sudo vncserver -SecurityType None -xstartup "dwm" -rfbport 5900 && sudo /noVNC/utils/novnc_proxy --vnc 127.0.0.1:5900 --listen localhost:6080
echo 'Admin password is Admin'
