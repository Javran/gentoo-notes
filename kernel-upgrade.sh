#!/bin/bash

# this file just list commands in order and take advantage of github's syntax highlight
#     and should never be executed
exit


# switch kernel
eselect kernel list
eselect kernel set $KERNEL_NUM

cd /usr/src/linux
cp $OLD_KERNEL_CONFIG_FILE .config

make oldconfig

# optional, if you want to toggle some features
make xconfig

make -j3 && make install && make modules_install && module-rebuild rebuild

# don't forget to update boot menu.
vim /boot/grub/grub.conf
