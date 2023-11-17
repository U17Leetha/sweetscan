# sweetscan


 █████  █████ ████  ██████████ █████                          █████    █████               
░░███  ░░███ ░░███ ░███░░░░███░░███                          ░░███    ░░███                
 ░███   ░███  ░███ ░░░    ███  ░███         ██████   ██████  ███████   ░███████    ██████  
 ░███   ░███  ░███       ███   ░███        ███░░███ ███░░███░░░███░    ░███░░███  ░░░░░███ 
 ░███   ░███  ░███      ███    ░███       ░███████ ░███████   ░███     ░███ ░███   ███████ 
 ░███   ░███  ░███     ███     ░███      █░███░░░  ░███░░░    ░███ ███ ░███ ░███  ███░░███ 
 ░░████████   █████   ███      ███████████░░██████ ░░██████   ░░█████  ████ █████░░████████
  ░░░░░░░░   ░░░░░   ░░░      ░░░░░░░░░░░  ░░░░░░   ░░░░░░     ░░░░░  ░░░░ ░░░░░  ░░░░░░░░ 
                                                                                           
                                                                                           
                                                                                           
A script for resolving domain names to IP addresses, expanding subnets, and running network scanning tools.

This script is designed to automate the process of resolving domain names to IP addresses, expanding subnets into individual IP addresses, and performing network scanning using tools like fping and nmap. 
It takes input from a scope.txt file, resolves domain names using dig, and expands subnets. The resulting IP addresses are then used in network scanning tools.

Prerequisites:
Python 3
dig (DNS lookup tool)
fping (ping utility for network scanning)
nmap (network scanning tool)

Instalation:
bash install.sh

Usage:
Create a scope.txt file with a list of domain names and subnets (CIDR notation). The tool with automatically remove whitespaces from the scope.txt file.

nano scope.txt
  example.com
  192.168.1.0/24
Run the tool in the same directory as the scope.txt file: sweetscan 
View the results in the generated output files (ip_list.txt, fping_output.txt, fping_alive.txt, nmap_output.txt).

Output Files
ip_list.txt: List of resolved IP addresses.
fping_output.txt: Output of the fping tool.
fping_alive.txt: List of alive IP addresses from fping results.
nmap_output.txt: Output of the nmap network scanning tool.

Additional Notes
Make sure to have the necessary permissions to run fping and nmap commands with superuser privileges if required.
Disclaimer
This script is provided as-is without any warranties. Use it responsibly and adhere to applicable laws and regulations when conducting network scans.

