## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![https://github.com/Manykeystrikes/GitHubexpression/blob/main/VM%20Network%20Flowchart.html](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  -   https://github.com/Manykeystrikes/GitHubexpression/tree/main/HTTP https://github.com/Manykeystrikes/GitHubexpression/tree/main/PlaybookEnter 

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly stable, in addition to restricting access to the network.
-The Load Balancers provide the external IP address 
-gives external traffic access to the servers
- 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the traffic volume and system access.
- _ Filebeat watch collects data about files, remote machines and also collects log files
- _Metricbeat records metrics and statistics and assist in monitoring servers 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

|   | Name       | Function           | IP Address   | Operating System   |   |
|---|------------|--------------------|--------------|--------------------|---|
|   | ---------- | ----------         | ------------ | ------------------ |   |
|   | Jump Box   | Gateway            | 10.0.0.4     | Linux              |   |
|   | Elk-Server | Application Server | 10.1.0.4     | Azure              |   |
|   | Web-1      | Virtual Web        | 10.0.0.5     | Azure              |   |
|   | Web-2      | Virtual Web        | 10.0.0.6     | Azure              |   |
|   | Web-3      | Virtual Web        | 10.0.0.7     | Azure              |   |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Elk machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _20.70.57.198

Machines within the network can only be accessed by SSH.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address? Web-3 IP = 10.0.0.7

A summary of the access policies in place can be found in the table below.

|   | Name       | Publicly Accessible   | Allowed IP Addresses   |   |
|---|------------|-----------------------|------------------------|---|
|   | ---------- | --------------------- | ---------------------- |   |
|   | Jump Box   | Yes                   | 40.127.68.5            |   |
|   | Elk-Server | Yes                   | 20.70.57.198           |   |
|   | Web-1      | No                    | 10.0.0.5               |   |
|   | Web-2      | No                    | 10.0.0.6               |   |
|   | Web-3      | No                    | 10.0.0.4               |   |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_Easy to set up and create automation

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...Docker installs an open source software
    Intstall Filebeat onto the DVWA Contanier
    Create the Filebeat Configuration File
    Create the Filebeat Installation Play
    Verifying Installation and Playbook
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_
    -10.0.0.5
    -10.0.0.6
    -10.0.0.7

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_
    -Downloaded Metricbeats
    -           Filebeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, Filebeat gathers data on the system file
        Metricbets looks at uptime of machaines and collects the related data

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the metricbeat-playbook.yml file to bash.
- Update the _Ansible file to include...
- Run the playbook, and navigate to the homepage of the server to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook?  Where do you copy it?/etc/ansible/files/filebeat-config.yml & /etc/ansible/files/metricbeat-config.yml
- _Which file do you update to make Ansible run the playbook on a specific machine? /etc/metricbeat/metricbeat.yml
How do I specify which machine to install the ELK server on versus which to install Filebeat on? 20.70.57.198_
- _Which URL do you navigate to in order to check that the ELK server is running?http://20.70.57.198:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._ansible-playbook metricbeat-playbook.yml
ansible-playbook filebeat-playbook.yml