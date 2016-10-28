#
# Set_AzureRmWebAppAlwaysOn.ps1
#
Param(
     [string] [Parameter(Mandatory=$true)] $ResourceGroupName,
	[string] [Parameter(Mandatory=$true)] $WebAppName,
	[bool] $AlwaysOnState
	)

	$webAppPropertiesObject = @{"siteConfig" = @{"AlwaysOn" = $AlwaysOnState}}

	$WebAppResourceType = 'microsoft.web/sites'

	# Get the resource from Azure
	$webAppResource = Get-AzureRmResource -ResourceType $WebAppResourceType -ResourceGroupName $ResourceGroupName -ResourceName $WebAppName

	# Pass the resource object into the cmdlet that saves the changes to Azure
	$webAppResource | Set-AzureRmResource -PropertyObject $webAppPropertiesObject -Force
