### Vagrant Hands-On Tutorial

## Hardware Requirements


## Software Requirements


###Installing Virtualbox

1. Download Virtualbox and the Extension Pack from ??
2. Run the Virtualbox installer and keep all of the defaults.
3. If you are asked to reboot your machine, go ahead and do that now. 
 
###Installing Vagrant

1. Download Vagrant from ??
2. Run the installer and keep all of the defaults
3. If you are asked to reboot your machine, go ahead and do that now. 

##Adding Vagrant Boxes

Now we need to add our base boxes to the system.  For this tutorial we are going to create 2 machine:  1. Linux and 2. Windows.

For both machines we are going to use freely available vagrant boxes from the Vagrant cloud at ???.

### Add Linux Base Box

For the Linux machine we are going to use the ubuntu/trusty64 machine.  To download and add this machine to your available Vagrant boxes, run the following command:

		vagrant box add ubuntu/trusty64
		
This will take a few minutes to download the vagrant boxes.  

### Add Windows Base Box

For the Windows machine we are going to use the opentable/??? machine.  To download and add this machine to your available Vagrant boxes, run the following command:

		vagrant box add opentable/???
		
This will take a few minutes to download the vagrant boxes.  

Unfortunately, the opentable box has some older configuration that we need to change before we will be able to use the box.

1. Navigate to the %UserProfile%\.vagrant.d\boxes directory. 
 1. Look for the ??? directory and go into this directory.
  1. Now go into the ??? directory and open the file Vagrantfile in your favorite text editor 
  1. Remove the following line from the file and save it 
  		
  	??? lines 
  
1.  Now you are ready to use the vagrant bar box to create vagrant machine.
  
### Verify the Vagrant Boxes are Available 

To verify that the Vagrant boxes are available, run the following command:

	vagrant box list

 In the output you should see the 2 boxes that we just downloaded.
 
 ???add screenshot???

###Vagrant Configurations

We need to create a directory to hold all of our vagrant machine configurations.

1. Create the directory c:\vagrantboxes .

##Create Linux Machine

In this section we will create a Linux machine 
based on the ubuntu/trusty64 base box. 

1. Open a command prompt
1. Navigate to c:\vagrantboxes

	  	c:
	  	cd \vagrantboxes

1. Create directory named linux

		mkdir linux 
		
3. Navigate to the newly created linux directory

 		cd linux 
 		
5. Initialize directory as a vagrant directory

		vagrant init ubuntu/trusty64

### Configuring the Linux machine

The vagrant init command created a file called vagrantfile in the linux directory.  The vagrantfile  contains all of the configurations for this vagrant machine. 

We need to edit this file to configure all of the settings for our vagrant machine.

1. Open the vagrantfile in your favorite text editor. 

You will notice that the file is heavily documented with lots of useful examples.  If you want more detailed information you can view the full documentation at [http://docs.vagrantup.com/](http://docs.vagrantup.com/).

#### Virtualbox configuration 

We need to tell vagrant that we are going  to  use virtualbox for this machine.

Scroll down to the virtualbox secsection on line???.  It will look like this

	??? add code???

 
1. The # mean that the line is commented out.  You need to uncomment the starting line for the virtualbox section by removing the # character.
3. Next we need to uncomment the "end" statement to tell vagrant where the virtualbox section ends.  
4. Now we need to tell vagrant how much memory we want to configure for this machine.  I recommend 1 gig of memory.  The memory configuration is done in megabytes, 1 gig equals 1024 megabytes.

		vb.memory = "1024"
		
5. Next we need to tell virtualbox how many cpus to use.  This should be set to the number of physical cpus that you  have.  In my case I have 2 physical

		vb.cpus = 2
		
#### Provisioning

So far you are just using Vagrant to manage the virtual machine settings which gets you part of the way to Dev Opsing yourself.  

The next step is to automatically install our software and configurations into the vagrant machine.

We can do this by using the Vagrant Provisioners.  

For this lab we are going to run shell scripts but there are several other provisioners available that I encourage to read about in the docs and give them a try. 

1. In the linux directory create a file called main.sh
2. Open the main.sh file and add the flowing lines:

		touch ~/vagranttest.txt
		"testing" > ~/vagranttest.txt
		
3. Save the main.sh file

In the Vagrantfile we need to tell vagrant to run this script when it creates the machine.

After the Virtualbox section, add the following lines:

		??? shell call???

### Additional Configuration Options 

Lets look at a couple of  additional configurations that you will most likely end up using in your environment but we are not going to use in this workshop.

#### Port Forwarding

???

### Shared Folders 

Mount a host machine folder onto the vagrant machine.  This is very useful when you need to share file between your host machine and the vagrant machine.

 
### Starting up the Linux box

Now that you have the Linux machine configured it is time to boot it up. 

In the command prompt that still have opened to the linux directory, run the following command:

	vagrant up
	
You should see a bunch of messages in the command prompt such as this screenshot:

Now the machine is booted up and running.  This machine is running headless since we will be logging into it tthrough ssh.

### Logging into the Linux Machine

Now lets log into the vagrant machine that we just created.

In order to do this we need an ssh client. 

On OSx and Linux host machines, this is included out of the box.  For Windows, the Git install comes with a ssh command line program.  

In the command prompt that you still have open to the linux directory, run the following command:

		vagrant ssh 
		
You are now logged into the vagrant Linux machine and can interact with it.  

To exit from the ssh session type exit and pressed enter.
  
### Vagrant Commands

There are several other commands that you will want to know.  Below is a list of those commands.

* Reboot: vagrant reload
* Hibernate: vagrant suspend 
 * Status: vagrant status
 * Global status: vagrant???
 * Shutdown: vagrant halt
 * Delete machine but keep Vagrantfile: vagrant destroy
  
## Congratulations 

Congratulations you have completed the linux portion of this workshop.  

Go ahead and shutdown the Linux machine and move onto to the Windows portion of this workshop.

## Windows Vagrant Machine

This section will walk you through creating a Windows vagrant box based on the opentable/??? base box.

1. Open a command prompt
1. Navigate to c:\vagrantboxes

	  	c:
	  	cd \vagrantboxes

1. Create directory named windows

		mkdir windows 
		
3. Navigate to the newly created windows directory

 		cd windows 
 		
5. Initialize directory as a vagrant directory

		vagrant init opentable/???
		
6. The previous step created a file called vagrantfile.  This file contains all of our configurations for this vagrant machine.  Open it in your text editor of choice. 

set virtual machine settings 
	memory 
	gui 
	cpus  
	clipboard 
provisioning 
	shell
	file	
	
## Packaging A Machine


 		 
