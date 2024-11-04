<#
Renomeando Computadores
net-down e uma forma de renomear computadores, mas vamos fazer isso diferente com o powershel
#>

$info = Get-WmiObject -Class Win32_ComputerSystem
$info.Name

#para Renomear
$info.Rename("qualquernome")
Restart-Computer

