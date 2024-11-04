<#
Select-String
Lembra muito o compando grep do linux, serve para procurar um texto em um arquivo
#>
Get-Help Select-String
Get-Content .\bancos.txt | Select-String ITAU, BRADESCO, SANTANDER
#usanto get-childre com o select string
Get-ChildItem .\* .txt |Select-String -Pattern ITA
#trazendo guest
Select-String -Path "Senha.txt" -Pattern guest
#trazendo um acime  e um abaixo do guest
Select-String -Path "Senha.txt" -Pattern guest -Content 1,1
#trazr do administrador
Select-String -Path "Senha.txt" -Pattern Administator