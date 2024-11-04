<#
Abrindo um gerenciamento remoto em uma maquina que esta fora do dominio
Precisamos configurar tanto o Cliente quanto o Servicor
#>

#No Servidor
winrm set winrm/config/client @{TrustedHost = "SRVANDRE"}

#CONSULTAR NA MAQUINA LOCAL DENTRO DO RM PARA VER HOST CONFIAVEIS
Get-Item WSMan:\localhost\Clinet\TrustedHost

#Adicionando cliente
Get-Item WSMan:\localhost\Clinet\TrustedHost 'Cliente'

#Adicionando mais de cum cliente
Get-Item WSMan:\localhost\Clinet\TrustedHost 'Cliente' -Concatenate


#No Cliente
Get-Item WSMan:\localhost\Clinet\TrustedHost '*'

#trabalhdno com as sessoes
Test-Connection nomecomputador
New-PSSession -ComputerName nomecomputador -Credential users\administrator

