# sweetscan   

![C4EC0348-8422-4E26-9855-32EE735CF94D_4_5005_c](https://github.com/U17Leetha/sweetscan/assets/80220625/c5a09406-c1c5-415d-85cf-d5b44f90825e)

                                                                                           
A script for resolving domain names to IP addresses, expanding subnets, and running network scanning tools.

This script is designed to automate the process of resolving domain names to IP addresses, expanding subnets into individual IP addresses, and performing network scanning using tools like fping and nmap. 
It takes input from a scope.txt file, resolves domain names using dig, and expands subnets. The resulting IP addresses are then used in network scanning tools such as nmap. This project is a work in progress.

## Prerequisites:

Python 3
dig (DNS lookup tool)
fping (ping utility for network scanning)
nmap (network scanning tool)
subfinder
nuclei

## Instalation:

    bash install.sh

## Usage:

Create a scope.txt file with a list of IP addresses, domain names and subnets (CIDR notation). The tool with automatically remove all spacing, URL paths, http(s) from the scope.txt file.

  example.com
  10.10.1.2
  192.168.1.0/24

## options 
options:

  -h, --help                   show this help message and exit 
  
  -a, --skip-fping             Skip fping and use ip_list.txt for remaining tools
  
  -u, --use-single             Use a single IP or Domain for scanning

  -i, --stop-after-ip-list     Stops script after creating ip_list.txt

  -f, stop-after-fping-alive   Stops script after creating fping_alive,txt
  
  
## Run the tool in the same directory as the scope.txt file

    sweetscan


View the results in the generated output files (ip_list.txt, fping_output.txt, fping_alive.txt, nmap_output.txt).

## Output Files

ip_list.txt: List of resolved IP addresses.

fping_output.txt: Output of the fping tool.

fping_alive.txt: List of alive IP addresses from fping results.

nmap_output.txt: Output of the nmap network scanning tool.

nmap_header_script_output_file.txt: Output of nmap http-header-security script 

nmap_cipher_script_output_file.txt: output of nmap ssl-enum-cipher script 

subfinder_output.txt: output of subfinder tool.

nuclei_report: markdown export of nuclei tool 

nuclei_output.txt: output of nuclei tool in standard format


## Additional Notes:

Make sure to have the necessary permissions to run fping and nmap commands with superuser privileges if required.
Disclaimer
This script is provided as-is without any warranties. Use it responsibly and adhere to applicable laws and regulations when conducting network scans.


