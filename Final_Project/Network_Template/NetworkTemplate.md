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

   - Once you have found the file, export it to your Kali machine's desktop.


4. Upload the file to [VirusTotal.com](https://www.virustotal.com/gui/). 

<img src="Images/VirusTotal_Upload.png">


5. What kind of malware is this classified as?

---

## Vulnerable Windows Machine

1. Find the following information about the infected Windows machine:
    - Host name
    - IP address
    - MAC address
    
2. What is the username of the Windows user whose computer is infected?
3. What are the IP addresses used in the actual infection traffic?
4. As a bonus, retrieve the desktop background of the Windows host.

---

## Illegal Downloads

1. Find the following information about the machine with IP address `10.0.0.201`:
    - MAC address
    - Windows username
    - Computer host name

2. Which torrent file did the user download?
