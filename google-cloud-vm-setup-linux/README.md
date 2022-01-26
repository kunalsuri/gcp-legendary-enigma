# Creator:	Kunal Suri
# Repo:		gcp-legendary-enigma
# Folder:	google-cloud-vm-setup-linux
# Intro:	Describing the several steps needed for settiup up a Linux VM in the Google Cloud Platform.

Setting up Graphical User Interface (GUI) for VM running Linux server on GCP

What?:	The following instruction allow users to install a GUI on thier linux server on GCP. 

Why?:	Unlike Window (that comes in a version with "Desktop Experience"), the VM installations having Linux are only the server version and not having any GUI.

How?:	Follow the steps, there are some pre-requisites (and assumptions)

	Step00:	Prerequisite & Assumptions
		1.	In the Google Compute Engine, a new Linux VM has been created
		2.	The VM is running or has been started 
		3. 	You have logged into the Linux Server via SSH console window 
		
	Step01: Running the script in the SSH console window
		1. In the VM instance, click the "SSH" button. It will open a new SSH console window
		2. In the console type the following:
			
			Note: Replace "myusername" and "mypass" with your credentials
			
			i. On Ubuntu
			wget https://github.com/eerolat/setup-google-linux/raw/master/ubuntu-install-gui.sh
			sh ubuntu-install-gui.sh -u myusername mypass
			
			i. On Debian
			wget https://github.com/eerolat/setup-google-linux/raw/master/debian-install-gui.sh
			sh ubuntu-install-gui.sh -d myusername mypass
			
		3.	Lets the process complete/ finish. You will see the final message as "GUI Installation Completed!"