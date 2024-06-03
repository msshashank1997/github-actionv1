[CmdletBinding()]
param(
    [Parameter(Mandatory = $True)]
    [string]
    $deploymentid,
    [string]
    $Username,
    [string]
    $Password
)

$continername = "testcontinerinstanse" + $deploymentid
$webappname = "webpage" + $deploymentid
$rgname = "testcontinerinstanse"

az login -u $Username -p $Password
Write-Output "Done"
Write-Output ""
#endregion

#region Subscription
#This sets the subscription the resources will be created in

Write-Output "Setting default azure subscription..."
az account set `
    --subscription "$azureSubscriptionName"
Write-Output "Done"
Write-Output ""
#endregion

az acr login --name 
Write-Output "Done"
Write-Output ""

# Create an App Service plan
az appservice plan create --name $webappname --resource-group $rgname --sku S1 --is-linux

# Create a web app with the ACR image
az webapp create --resource-group $rgname --plan $webappname --name $webappname --deployment-container-image-name "testcontinerinstanse.azurecr.io/my-app:latest"

Write-Output "Done creating VM"
Write-Output 
