# linuxbiosupgrade
Image a USB stick from Linux with an environment and exe to upgrade your bios.

# Overview
This project provides Linux users an easy way to create a USB stick that they
can use to update their BIOS.

This project provides a script and necessary files to create a disk image that
can be put onto a USB stick. A computer can boot off the USB stick which
automatically runs a DOS executable. The DOS executable must be provided by
the user. The DOS executable would be the BIOS updater.

For example, DELL provides a BIOS update named ```M4600A16.exe```. This is a DOS
executable. I only have Linux on my machine, so I had to create a USB stick,
with ```M4600A16.exe``` in its filesystem, that would boot my machine into a DOS
environment. Then I could execute ```M4600A16.exe``` to update the BIOS.

I wanted an eay way to image the USB stick if another BIOS update came out. Or
if I wanted to update the BIOS on another machine. Additionally, I wanted it
to automatically run the BIOS updater and then reboot when it was done.

This does NOT mean the BIOS updater will run without user input. You will still
have to verify that you want to go ahead with the update if it prompts you.

# Usage
## Setup the config file
Copy ```creatediskimg.ini``` to ```options.ini```.

Edit ```options.ini```

Specify ```bios_exe```. This is required to run. This will be the BIOS updater
that you downloaded.

Do NOT specify ```usb_dev``` if you do NOT want the script to write to your USB
stick. It will just create the disk image. And then you can image your USB
stick manually. Otherwise, you can set ```usb_dev = /dev/sdX```, where
```sdX``` is the device name for your USB stick. Then the script will image
your USB stick for you.

## Run the script
The script must be run with root privileges.

```
sudo ./creatediskimg --config=options.ini
```

The script expects 'python' to be in the path. It will run with Python 2.7 or
later and Python 3.4 or later.

You can also specify the particular Python you want it to run with:

```
sudo python3.4 ./creatediskimg --config=options.ini
```

# Utils
The ```[utils]``` section in the config file shows all the external utilities
that the script needs. The paths given are standard on most Linux distributions.
The script checks that if can find the utilities and it will fail before doing
anything if it cannot find one or more utilities.

You can change the path for any utility to allow the script to succeed. You may
have to change ```mkfs``` to point to the utility on your system that creates
a FAT filesystem.

# FreeDOS
The included ```img-files``` directory was bootstrapped using files from the
FreeDOS distribution. The FreeDOS website is:

http://www.freedos.org/

You can download the ISO I extracted the files from here:

http://www.freedos.org/download/download/fd11src.iso

