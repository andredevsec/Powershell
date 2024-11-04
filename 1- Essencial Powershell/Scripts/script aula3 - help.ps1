# uso do help
Get-Help Write-Host
clear

# trazer exemplos, vale para todos cmdlets
Get-Help Write-Host -examples
clear

# por exemplo, todos do comando abaixo podemos utilizar o -help
Get-Command -CommandType cmdlet
Write-Host "usando get help com um comando da lista"
get-help Update-List
clear

# indo alem e buscando ajuda online
get-help Update-List -Online
Write-Host "Red on white text." -ForegroundColor red -BackgroundColor white
Red on white text.
clear

# utilizando get help para trazer informações get date em uma janela grafica, sem uso da internet
Get-Help Get-Date -ShowWindow


