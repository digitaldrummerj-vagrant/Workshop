# Vagrant Workshop 
####Fast-Track Your Development Environment Setup and Management with Vagrant

##Overview

Come learn how Vagrant will make it easier to manage your development environment setup and remove the "works on my machine" excuse for your team.    First, we will walk through an overview of Vagrant.  Then we will dive into creating Vagrant machines.  You will walk away with everything you need to have Vagrant manage your development environment. 

We will create a Linux and Windows virtual machine controlled by Vagrant.  If time permits we will also create an Azure virtual machine that is managed by Vagrant. 


##Laptop/Computer Requirements

1. Minumum 4GB RAM, prefer at least 8GB
1. Administrator rights on your machine
1. At least 25 GB of free hard drive space 

Note that the workshop will work on Windows, OSx, or Linux machine as long as you can run Virtualbox on the machine.

##Software

1. Virtualbox 5.x - [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
1. Virtualbox Extension Pack - [http://download.virtualbox.org/virtualbox/5.0.2/Oracle_VM_VirtualBox_Extension_Pack-5.0.2-102096.vbox-extpack](http://download.virtualbox.org/virtualbox/5.0.2/Oracle_VM_VirtualBox_Extension_Pack-5.0.2-102096.vbox-extpack)
1. Vagrant - [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)
1. Git Command Line (Windows Only) - [https://github.com/git-for-windows/git/releases/download/v2.5.1.windows.1/Git-2.5.1-64-bit.exe](https://github.com/git-for-windows/git/releases/download/v2.5.1.windows.1/Git-2.5.1-64-bit.exe)

##Accounts

Azure account if you want to create an Azure Virtual Machine as part of the workshop.  This is totally optional.

##Pre-Work:

Make sure that you are not behind a proxy server for this pre-work.

###Installing Vagrant Boxes to Use

1. After install software above, open a command prompt or terminal
1. Run the following commands

    ```cmd
        vagrant box add ubuntu/trusty64
        vagrant box add opentable/win-2012r2-standard-amd64-nocm
        vagrant plugin install vagrant-reload
        (optional) vagrant plugin install vagrant-azure
    ```

1. Verify the 2 vagrant boxes were added correctly by running:
    vagrant box list 
  

