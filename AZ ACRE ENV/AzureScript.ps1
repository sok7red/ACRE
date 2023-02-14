# Creating Az ACRE Resource Group
New-AzResourceGroup -Name ACRErg_powershell -Location WestEurope

# Creating Az Service Plan --FREE
New-AzAppServicePlan -ResourceGroupName "ACRErg_powershell" -Name "ACRE_ServicePlan_Free" -Location "WestEurope" -Tier "Free"

# Creating WebApp
New-AzWebApp -ResourceGroupName "ACRErg_powershell" -Name "ACREWebAppPowershell" -Location "WestEurope" -AppServicePlan "ACRE_ServicePlan_Free"