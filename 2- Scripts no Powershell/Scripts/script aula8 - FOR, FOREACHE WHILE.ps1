<#
FOR FOREACH WHILE
for - inicio condição; proximovalor; codigo de repetição
foreach variaveis e itens de coleção codigo de execução
while - condição {codigo de execução
#>

#Exemplo FOR
for ($var=1; $var -le 255; $var++) {
    Write-Host 192.168.0.$var
    #Test-Connection 192.168.0.$var
}

#Exemplo FOREACH
foreach ($numeros in 1,2,3,4,5,6,7,8,9) {
    echo $numeros
}

foreach ($arquivos in Get-ChildItem ) {

    if ($arquivos.Directory) {
    $arquivos.FullName

    }
}

#WHILE
$i =0
while($true) {

    $i++
    Write-Host VVou contar até $i

    if ($i -ge 1000) {
    break
    }
}