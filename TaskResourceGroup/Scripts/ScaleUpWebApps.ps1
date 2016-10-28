#
# ScaleUpWebApps.ps1
#

# Set App Service Plan SKU to Standard
Set-AzureRmAppServicePlan -Tier "Standard" -ResourceGroupName "TasksRG" -Name "TaskAppServicePlan"

# Turn on AlwaysOn for web client app
$ResourceGroupName = "TaskWebClientRG"
$WebAppName = "TaskWebDemo"
.\Set-AzureRmWebAppAlwaysOn -ResourceGroupName $ResourceGroupName -WebAppName $WebAppName -AlwaysOnState $true

# Turn on AlwaysOn for task service app
$ResourceGroupName = "TasksRG"
$WebAppName = "TaskServiceufjz75z7vr2ty"
.\Set-AzureRmWebAppAlwaysOn -ResourceGroupName $ResourceGroupName -WebAppName $WebAppName -AlwaysOnState $true



