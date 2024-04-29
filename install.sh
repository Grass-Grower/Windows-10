sudo apt update
sudo apt install qemu-kvm qemu-system-x86 openbox firefox tigervnc-standalone-server
git clone https://github.com/novnc/noVNC
cd noVNC
sudo vncserver -SecurityType none -xstartup "openbox" -r fbport 5900
