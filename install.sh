#!/usr/bin/bash
# Author Gaurav Sablok
# Date 2024-9-26
#
# A complete apptainer installation for the Ubuntu release using the BASH.
# Launch this on the new installation and the apptainer will install.

read -r -p "Do you want to install the apptainer:" apptainer
if [[ ${apptainer} == "yes" ]]; then

sudo apt-get install git
sudo apt-get install build-essential
sudo apt-get install libfuse3-3 libfuse3-dev libfuse-dev uidmap squashfs-tools -y
sudo apt-get install debhelper dh-autoreconf devscripts help2man libarchive-dev libssl-dev uuid-dev golang-go
wget https://github.com/apptainer/apptainer/releases/download/v1.3.4/apptainer-suid_1.3.4_amd64.deb
wget https://github.com/apptainer/apptainer/releases/download/v1.3.4/apptainer_1.3.4_amd64.deb
sudo dpkg -i apptainer_1.3.4_amd64.deb
sudo dpkg -i apptainer-suid_1.3.4_amd64.deb
echo "installation of the apptainer is complete"
echo "checking the apptainer installtion"
echo $pwd
echo $PATH

fi
