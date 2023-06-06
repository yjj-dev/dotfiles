#!/bin/bash


sudo hostnamectl set-hostname host


sudo cp /etc/sysctl.conf /etc/sysctl.conf.bak

sudo dnf update -y
sudo dnf install -y dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser
sudo dnf install -y google-chrome-stable


sudo yum update -y  
sudo yum install -y epel-release 
sudo yum repolist

sudo yum groupinstall 'Development Tools'

sudo yum install -y net-tools openssl-devel openssh-server ca-certificates
sudo yum install -y zip unzip wget curl httpie vim mlocate htop sysstat psmisc 


echo ">>> install sdkman"
sudo curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 20-tem
sdk default java 20-tem
sdk use java 20-tem


echo ">>> install nvm"
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash 
source ~/.bashrc 
nvm install --lts
nvm use --lts


echo ">>> install bun"
sudo curl -fsSL https://bun.sh/install | bash
source ~/.bachrc


echo ">>> install eclipse"
wget https://ftp.kaist.ac.kr/eclipse/technology/epp/downloads/release/2023-03/R/eclipse-jee-2023-03-R-linux-gtk-x86_64.tar.gz
tar -xvf eclipse-jee-2023-03-R-linux-gtk-x86_64.tar.gz 
mv eclipse-jee-2023-03-R-linux-gtk-x86_64.tar.gz ./eclipse


echo ">>> install vs code"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf update -y 
sudo dnf install -y code 
