# AzureAutomation2019
Geavanceerd demo pagina systeem


Welkom bij mijn demo pagina systeem.

Als je hem wilt gebruiken via de Azure Shell ga je naar https://shell.azure.com/


Daar upload je de JSON file.

Kies of maak een resourcegroep uit Azure.

Plak daarna het volgende in de shell:
```
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$deploymentName = Read-Host -Prompt "Enter the name for this deployment"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"

New-AzureRmResourceGroup -Name $resourceGroupName -Location $location
New-AzureRmResourceGroupDeployment -Name $deploymentName -ResourceGroupName $resourceGroupName -TemplateFile "AzureDemopageVM.json"
```

Druk op enter, hij gaat nu vragen om waardes. De eerste waarde is de resourcegroep naam. Daarna een unieke deployment naam (verzin iets), daarna typ je de locatie in of iets randoms. Bij iets randoms kiest die een US locatie.
Vervolgens voer je het json commando uit en vraagt hij om een storage naam. Verzin een unieke naam. Daarna een naam en wachtwoord voor de VM en hij gaat uitrollen. Het ip krijgt dan een demo page.
