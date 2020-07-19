## Docker Setup Guide

* [Docker Overview](https://docs.docker.com/get-started/overview)
* [Overview of Docker Compose](https://docs.docker.com/compose)

### Install Docker
Follow the instructions to install Docker on your computer:

* [Using Docker in WSL2](https://docs.docker.com/docker-for-windows/wsl-tech-preview) - Windows

***
**For Windows users installing Docker Desktop using Hyper V rather than WSL:** 

* Make sure you are using Windows Pro, otherwise Docker won't work on your operating system. 

* Install [Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/#install-docker-desktop-on-windows) rather than Docker Toolbox to run Docker natively. 

* Docker Desktop can't be used at the same time with VirtualBox because it uses HyperV for hardware virtualization. Make sure to uninstall VirtualBox before starting the installation.

* After installing Docker Desktop, right click on Docker's tray icon and go to Settings -> Resources -> File Sharing and share the drive on which the assistlist-dev-docker repository resides.

* If you receive an error such as "Changing shared directories failed, see the log for details", try restoring Docker to factory defaults: click the Troubleshoot button (bug icon) and click "Reset to factory defaults".
***
* [Download Docker](https://docs.docker.com/get-docker) - Linux and MacOS
* [Download Docker Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04) - alternative guide for Ubuntu if the above doesn't work

(Linux and MacOS) If you can't run Docker commands without `sudo` on you machine, please follow:

* [Run Docker commands without sudo](https://github.com/sindresorhus/guides/blob/master/docker-without-sudo.md)

### Install Docker Compose (Linux and MacOS)
Follow the instructions to install docker-compose on your computer:

* [Install Docker Compose](https://docs.docker.com/compose/install/)