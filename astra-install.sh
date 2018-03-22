#install astra dependencies

sudo apt install ros-kinetic-astra-launch ros-kinetic-image-pipeline ros-kinetic-rtabmap-ros

#update the udev rules
cd  /etc/udev/rules.d/

sudo cat > 56-orbbec.rules <<EOL
SUBSYSTEM=="usb", ATTR{idProduct}=="0400", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0401", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0402", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0403", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0404", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0405", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0406", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0407", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0408", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="0409", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
SUBSYSTEM=="usb", ATTR{idProduct}=="040a", ATTR{idVendor}=="2bc5", MODE:="0666", OWNER:="root", GROUP:="video"
EOL

sudo service udev reload
sudo service udev restart