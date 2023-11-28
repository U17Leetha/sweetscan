#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y python3
sudo apt-get install -y dnsutils  # Installs 'dig'
sudo apt-get install -y fping
sudo apt-get install -y nmap
sudo apt-get install -y subfinder
sudo apt-get install -y nuclei

# Copy the script to /usr/local/bin
sudo cp sweetscan /usr/local/bin/

# Make the script executable
sudo chmod +x /usr/local/bin/sweetscan

# Add the directory to $PATH by adding the following line to ~/.bashrc
echo 'export PATH=$PATH:~/usr’/local/bin >> ~/.bashrc

# Source the updated .bashrc
source ~/.bashrc

# Print installation completion message
echo "SweetScan has been installed. You can now run 'sweetscan' from any directory."
