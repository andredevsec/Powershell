<#
IF e ELSE
controlar fluxo, sempre vem acompanhado de um operador de comparação
#>

#Consultar serviço do Windows
$Serv = Get-Service -Name EFS
If ($Serv.Status -eq "Running"){
    Write-Host Em execução
} else {
    Write-Host Nao esta executando
}

$Serv = Get-Service -Name Spooler
If ($Serv.Status -eq "Running"){
    Write-Host Em execução
} else {
    Write-Host Nao esta executando
}

#]Teste de Internet
$con = (Test-Connection www.google.com -Count 1 -Quiet)

if ($con -eq "true") {
    Write-Host "Internet funcionando" -ForegroundColor Yellow
} else {
    Write-Host "Internet não funciona"
}

