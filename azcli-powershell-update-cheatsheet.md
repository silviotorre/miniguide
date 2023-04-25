# AZ CLI & PowerShell Update Cheatsheet

## Introduction
This cheatsheet offers over 10 examples for updating Azure CLI and the Az PowerShell modules to ensure you have the latest features and security patches.

## Examples

1. Update Azure CLI to the latest version:
   > az upgrade

2. Update a specific Azure CLI extension:
   > az extension update --name <extension-name>

3. List outdated Azure CLI extensions:
   > az extension list --outdated

4. Update all Azure CLI extensions:
   > for ext in $(az extension list --query "[].name" -o tsv); do az extension update --name $ext; done

5. Update Az PowerShell module:
   > Update-Module -Name Az -Force

6. Install the latest preview version of Az module:
   > Install-Module Az -AllowPrerelease -Force

7. Check version for Azure CLI:
   > az version

8. Check installed Az module version:
   > (Get-Module -ListAvailable -Name Az).Version

9. Use PowerShell Gallery search for modules:
   > Find-Module -Name Az*

10. Reinstall Az module if necessary:
    > Uninstall-Module -Name Az -AllVersions -Force; Install-Module -Name Az -Force
