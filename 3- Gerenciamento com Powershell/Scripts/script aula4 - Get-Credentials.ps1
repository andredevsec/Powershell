<#Get-Credencial
Salvar as credenciais no script
#>
$credent = Get-Credential users\administrator

Test-Connection nomecomputador

New-PSSession -ComputerName nomecomputador -Credential $credent


#passando os servidores de acesso e a credencial usara, dentro do get-content voce passa uma lista de servidores
$rede = New-PSSession -ComputerName (Get-Content C:\Users) -Credential $credent

Invoke-Command $rede {Get-Service}