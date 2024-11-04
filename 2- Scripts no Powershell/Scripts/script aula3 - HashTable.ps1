<#
HashTable tambem e´é uma matris porem e diferetente
ela eprmite armazenar os dados aos pares
permite ser ordenada
tem um valor que possui outro valor
#>

# Teste com HashTable
Clear-Host
$servidores = [ordered] @{Server1 = "127.0.0.1"; Server2 = "127.0.0.2"; Server3 = "127.0.0.3"}
$servidores
#Adicionar
Write-Host "Adicionando dado ao HashTable"
$servidores["Server4"] = "127.0.0.4"
$servidores
Write-Host "Removendo dado ao HashTable"
$servidores.Remove("Server4")
$servidores
Write-Host Contando
$servidores.Count
Write-Host Testando conexao server1
Test-Connection $servidores.Server1
Write-Host Vendo valores da variavel servidores
$servidores.Values
