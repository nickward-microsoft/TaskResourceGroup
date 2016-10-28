#
# ScaleDownWebApps.ps1
#

# Turn off AlwaysOn for web client app
$ResourceGroupName = "TaskWebClientRG"
$WebAppName = "TaskWebDemo"
.\Set-AzureRmWebAppAlwaysOn -ResourceGroupName $ResourceGroupName -WebAppName $WebAppName -AlwaysOnState $false

# Turn off AlwaysOn for task service app
$ResourceGroupName = "TasksRG"
$WebAppName = "TaskServiceufjz75z7vr2ty"
.\Set-AzureRmWebAppAlwaysOn -ResourceGroupName $ResourceGroupName -WebAppName $WebAppName -AlwaysOnState $false

# Set App Service Plan SKU to Free
Set-AzureRmAppServicePlan -Tier "Free" -ResourceGroupName "TasksRG" -Name "TaskAppServicePlan"
