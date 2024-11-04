<#
Gerenciando AD atraves do powershell
É uma das tarefas mais corriueiras do dia dia de quem trabalha no ambiente coprporativo que e de Powershell e Infraestrutura
Muitas tarefas podem ser feitas atraves do Powershell

Automatizar muita ciração de objetos
- Usuarios
- Grupoas
- OU
- Sites e Serviços
#>

#Esse é o comando mais util pois ele tras todos os cmdlet que pode ser usado com o AD
Get-Module -Module ActiveDirectory

#ver comandos que começa com new-AD
Get-Command new-AD*

#Criar um novo usuario
New-ADUser ALL.Teste

#ver comandos que começa com get-AD
Get-Command get-AD*

#para ver informações do usuario criado
Get-ADUser ALL.Teste

#para ver todas propiedades do usuario
Get-ADUser ALL.Teste -Properties *

#ver propiedade que mostra o ultimo login
Get-ADUser ALL.Teste -Properties LastLogonDate

#usar filtro para trazer todos usuario do AD
Get-ADUser -Filter*

# usar o | para filtrar ver todos usuario desabilitados
Get-ADUser -Filter * | where {$_.enable -eq $false}

#usar formao de lista pata ver os nomes de usuarios
Get-ADUser -Filter * | ft name

#usando filtro junto com propiedades e exportando para um csv
Get-ADUser -Filter * -Properties * | Export-Csv c:\listauser.csv

#filtrando pelos atributos AD
Get-ADUser -Filter * -Properties * | select -Property DisplayName

#Importar arquivo via csv de usuarios ou grupos ad
Import-Csv c:\listauser.csv

#excluindo o usuario
Get-ADUser ALL.Teste | remove-ADUser