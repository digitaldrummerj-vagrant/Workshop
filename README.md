# Vagrant Workshop


##Laptop/Computer Requirements
1. Minumum 4GB RAM, prefer at least 8GB
1. Administrator rights on your machine
1. At least 25 GB of free hard drive space 

##Software

1. Virtualbox 5.x - [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
1. Virtualbox Extension Pack - [http://download.virtualbox.org/virtualbox/5.0.2/Oracle_VM_VirtualBox_Extension_Pack-5.0.2-102096.vbox-extpack](http://download.virtualbox.org/virtualbox/5.0.2/Oracle_VM_VirtualBox_Extension_Pack-5.0.2-102096.vbox-extpack)
1. Vagrant - [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)
1. PDF Reader - Workshop Manual will be available in PDF format


##Pre-Work:
===============
Make sure that you are not behind a proxy server for this pre-work.

###Installing Vagrant Boxes to Use:
1. After install software above, open a command prompt or terminal
1. Run the following commands

    vagrant box add ubuntu/trusty64
    vagrant box add opentable/win-2012r2-standard-amd64-nocm
    vagrant plugin install vagrant-reload
    (optional) vagrant plugin install vagrant-azure

1. Verify the 2 vagrant boxes were added correctly by running:
    vagrant box list 
  

