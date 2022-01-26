#Setting up Graphical User Interface (GUI) for VM running Linux server on GCP
	Metadata
		1.	Creator:	Kunal Suri
		2.	Repo:		gcp-legendary-enigma
		3. 	Folder:		gcp-vm-linux-gui-setup
		4. 	Intro:		Describing the several steps needed for settiup up a Linux VM in the Google Cloud Platform.
		

#What?:	
The following instruction allow users to install a GUI on thier linux server on GCP. 

Why?:	Unlike Window (that comes in a version with "Desktop Experience"), the VM installations having Linux are only the server version and not having any GUI.

How?:	Follow the steps, there are some pre-requisites (and assumptions)

	Step00:	Prerequisite & Assumptions
		1.	In the Google Compute Engine, a new Linux VM has been created
		2.	The VM is running or has been started 
		3. 	You have logged into the Linux Server via SSH console window 
		4. 	Check if you have wget: 
				Type on the console --> 
				If there is an error message, then do --> sudo apt install wget
				Check again --> wget -V
				It should work now!
		
		
	Step01: Running the script in the SSH console window
		1. In the VM instance, click the "SSH" button. It will open a new SSH console window
		2. In the console type the following:
			
			Note: Replace "myusername" and "mypass" with your credentials
			
			i. On Ubuntu 
			wget https://github.com/kunalsuri/gcp-legendary-enigma/blob/main/gcp-vm-linux-gui-setup/ubuntu-install-gui.sh
			sh ubuntu-install-gui.sh -u myusername mypass
			
			i. On Debian
			wget https://github.com/kunalsuri/gcp-legendary-enigma/blob/main/gcp-vm-linux-gui-setup/debian-install-gui.sh
			sh debian-install-gui.sh -u myusername -d mypass
			
		3.	Lets the process complete/ finish. You will see the final message as "GUI Installation Completed!"
