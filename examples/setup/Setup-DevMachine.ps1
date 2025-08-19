<#
.SYNOPSIS
  Script for configuring and installing a new machine for development work.

.DESCRIPTION
  This script automates the setup process for a new development machine. It can be used to install required software, configure system settings, and apply development environment preferences. The script is intended to streamline the onboarding process and ensure consistency across development environments.

.NOTES
  - Review and customize the script to match your specific development requirements.
  - Run this script with appropriate permissions (e.g., as Administrator) to ensure all configurations are applied successfully.

.EXAMPLE
  .\Setup-DevMachine.ps1

  Runs the script to configure and install all necessary tools and settings for a new development machine.
#>

winget download --id GnuPG.Gpg4win --accept-package-agreements --accept-source-agreements --download-directory "C:\Installers\Gpg4win";
$installerName = (Get-ChildItem C:\Installers\Gpg4win)[0].Name;
Start-Process "C:\Installers\Gpg4win\$installerName" -ArgumentList "/S", "/D=$("$env:ProgramFiles(x86)")\Gpg4win";
