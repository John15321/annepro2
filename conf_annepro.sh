sudo touch /etc/udev/rules.d/obinslab-starter.rules
sudo echo 'SUBSYSTEM=="input", GROUP="input", MODE="0666"
# For ANNE PRO 2
SUBSYSTEM=="usb", ATTRS{idVendor}=="04d9", ATTRS{idProduct}=="8008",
MODE="0666", GROUP="plugdev"
KERNEL=="hidraw*", ATTRS{idVendor}=="04d9", ATTRS{idProduct}=="8008",
MODE="0666", GROUP="plugdev"
## For ANNE PRO
SUBSYSTEM=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5710",
MODE="0666", GROUP="plugdev"
KERNEL=="hidraw*", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5710",
MODE="0666", GROUP="plugdev"' >> /etc/udev/rules.d/obinslab-starter.rules
sudo udevadm control --reload-rule
echo "Replug your keyboard"
