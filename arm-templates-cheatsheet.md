# ARM Templates Cheatsheet

## Introduction
This cheatsheet provides over 10 examples for working with ARM templates and Bicep files for resource creation, management, and troubleshooting using Azure CLI.

## Examples

1. Validate a JSON ARM template:
   > az deployment group validate --resource-group MyRG --template-file template.json

2. Deploy a JSON ARM template:
   > az deployment group create --resource-group MyRG --template-file template.json --parameters @params.json

3. Run a what-if operation with a JSON template:
   > az deployment group what-if --resource-group MyRG --template-file template.json

4. Export an existing deployment to an ARM template:
   > az group export --name MyRG

5. Build a Bicep file to JSON:
   > az bicep build --file main.bicep

6. Validate a Bicep file (via build):
   > az bicep build --file main.bicep --out-file temp.json

7. Deploy a Bicep file:
   > az deployment group create --resource-group MyRG --template-file main.bicep --parameters @params.json

8. Use what-if operation with Bicep:
   > az deployment group what-if --resource-group MyRG --template-file main.bicep

9. List deployments in a resource group:
   > az deployment group list --resource-group MyRG

10. Troubleshoot deployment errors by retrieving logs:
    > az deployment operation group list --resource-group MyRG --name <deploymentName>
