# Network Forensic Analysis Report

_TODO_ Complete this report as you complete the Network Activity on Day 3 of class.

## Time Thieves 
You must inspect your traffic capture to answer the following questions:

1. What is the domain name of the users' custom site?
The domain is frank-n-ted


<img src="Images/Custom_site.png">



2. What is the IP address of the Domain Controller (DC) of the AD network?

        - IP = 10.6.12.12

3. What is the name of the malware downloaded to the 10.6.12.203 machine?
        -   Malware File = June_11

<img src="Images/Malware_June11.png">
Shows the GET header  request of the file

<img src="Images/TCP_File_GETHeader.png">

   
4. Result of file, exported  to Kali machine's desktop.



<img src="Images/VirusTotal_Upload.png">


5. Kind of malware is this classified as.

        - The virus indicated from the file upload = Trojan.

---

## Vulnerable Windows Machine

1. The following information relates to the infected Windows machine:
    - Host name = Rotterdam_PC
    - IP address = 172.16.4.205
    - MAC address =00:59:07:d0:63:a4

<img src="Images/HOST_IP_MACadd.png">


2. The username of the Windows user of infected computer.

        - Name = matthijs.devries


<img src="Images/Comp_Infectedname.png">





3. The IP addresses used in infection traffic.

        - 172.16.4.205 - 185.243.115.84
        - 166.62.111.64 - 172.16.4.205


<img src="Images/IPs_Used.png">






---

## Illegal Downloads

1. The following information relates to machine with IP address `10.0.0.201`:
    - MAC address = 00:16:17:18:66:c8
    - Windows username = blanco-destops
    - Computer host name = BLANCO-DESKTOPS

<img src="Images/IP_10.0.0.201.png">

2. Torrent file, user download

    - File downloaded = Betty_Boop_Rhythm

<img src="Images/File_DL.png">

