[CmdletBinding()]
param(
    [Parameter(Mandatory = $True)]
    [string]
    $deploymentid
)

$continername = "testcontinerinstanse" + $deploymentid
$webappname = "webpage" + $deploymentid
$rgname = "testcontinerinstanse"


az acr login --name 
Write-Output "Done"
Write-Output ""

# Create an App Service plan
az appservice plan create --name $webappname --resource-group $rgname --sku S1 --is-linux

# Create a web app with the ACR image
az webapp create --resource-group $rgname --plan $webappname --name $webappname --deployment-container-image-name "testcontinerinstanse.azurecr.io/my-app:latest"

Write-Output "Done creating VM"
Write-Output 
