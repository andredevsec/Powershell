<#

Operador	Descrição
-lt 	 Menor  que
-le 	 Menor ou igual 
-gt 	 Maior que
-ge 	 Maior ou igual
-eq 	 Igual
-ne 	 Não igual
-like	Usa wildcards para comparar padrões

#>

# para traser oque e igual a running
Get-Service | Where-Object {$_.Status -eq "Running"}

#o que nao e igual a runnign
Get-Service | Where-Object {$_.Status -ne "Running"}

#procurando seviços com a palavra security
Get-Service | Where-Object {$_.DisplayName -like "*Security*"}

