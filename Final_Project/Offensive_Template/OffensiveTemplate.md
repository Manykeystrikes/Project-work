# Red Team: Summary of Operations

## Table of Contents
- Exposed Services
- Critical Vulnerabilities
- Exploitation

### Exposed Services

Nmap scan results for each machine reveal the below services and OS details:

```bash
$ nmap -vv -Pn -O 192.168.1.0/24
```
<img src="Images/Scan_Ouput_POE.png">





<img src="Images/Scan_Ouput_POE_110.png">


This scan identifies the services below as potential points of entry:
- Target 1 IP 192.168.1.110
  - List of  - Exposed Services
    
      -Port 22 ssh
      -Port 80 http
      -Port 111 rpcbind
      -Port 139 netbios-ds
      -Port 445 microsoft

_TODO: Fill out the list below. Include severity, and CVE numbers, if possible._

The following vulnerabilities were identified on each target:
- Target 1 IP 192.168.1.110
  - List of Ccitical vulnerabilities
    -Password
    -HTTP service 
    -Wordpress 


_Scan results to prove the identified vulnerabilities._



<img src="Images/Scan_Vulner_Identified.png">

### Exploitation
_TODO: Fill out the details below. Include screenshots where possible._

The Red Team was able to penetrate `Target 1` and retrieve the following confidential data:
- Target 1
  - `flag1.txt`: _TODO: Insert `flag1.txt` hash value_

<img src="Images/Flag1_and_Flag2.png">

    - **Exploit Used**
      - _TODO: Identify the exploit used_
      - _TODO: Include the command run_
  - `flag2.txt`: _TODO: Insert `flag2.txt` hash value_
    - **Exploit Used**
      - _TODO: Identify the exploit used_
      - _TODO: Include the command run_