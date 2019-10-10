# Powershell Scripts for Windows Admins

These are a collection of scripts that are useful for windows admins managing an Active Directory Domain locally. Some of these scripts might also be useful for Azure based AD but I don't have experience using them that way.


## Installation Requirements
*Note: These scripts require powershell as well as the active directory module for powershell. If you are running them on a domain controller these programs will already be installed. If you want to run them on a domain joined workstation you will need to follow instructions for installation below*

**Instructions for Windows 10 Workstation**
1. Goto Windows Settings
2. Search for "optional" and select "Manage Optional Features"
3. Add the following features
   * RSAT: Active Directory Domain Services and Lightweight Directory Services Tools
4. Download the latest release of this repo [here](https://github.com/atinybeardedman/windows-admin-powershell-scripts/releases/latest/)
5. Edit and run the scripts found. Results will be automatically saved in a "results" directory with timestamps of when they were run and a descriptive title of the type of report.
