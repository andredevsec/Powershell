<#
Pwershell Web Acesss
Disponibiliza o powershell atraves da web, ou seja, voce pode acessar um powershel atraves de um navegador Browser
#>

#Configurações
Install-WindowsFeature -name WindowsPowerShellWebAccess -ComputerName nomecomputador -IncludeManagementTools
#Unnstall-WindowsFeature -name WindowsPowerShellWebAccess 

#Cria um certificado digital, para fazer uma conexão segura com um SSL
Install-PswaWebApplication -WebApplicationName PSWA -UseTestCertificate
#Unnstall-PswaWebApplication -WebApplicationName PSWA -UseTestCertificate

#Adiciona uma regra para controlar quem pode acessar, aqui por questao de teste, goloquei todos
Add-PswaAuthorizationRule -ComputerGroup * -configurationName * -UserGroupName *
Get-PswaAuthorizationRule
#Remove-PswaAuthorizationRule -Id 0