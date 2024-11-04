# Cmdlets, Funções e alias
# Cmdlets
# Uma pequena unidade de funcionalidade relacionada a um conjunto de recursos
# Exemplo get-command -commandtype cmdlet

# Funções
# Podem fazer o mesmo que o cmdlets
# get-command -commandtype function

# Alias
# Alias são como apelidos para os cmdlets e funções
# get-command -commandtype alias

# |more faz com que nao apresente tudo de uma vez
Get-Command -CommandType cmdlet | more
clear

# procurar um cmdlet especifico
Get-Command -CommandType cmdlet *eventlog*
clear

# | more fazendo o mesmo com funções
Get-Command -CommandType Function | more
clear

# procurar um function especifico
Get-Command -CommandType cmdlet *eventlog*
clear

#pergunta, e uma função out cmdlet
Get-ChildItem Function:\Clear-Host

# pegando informação do childreniten
get-help Get-ChildItem -ShowWindow
clear

# vendo o tipo da function
Get-ChildItem Function:\Clear-Host | type
clear

# vendo so alias, ou nome de funções
alias

#criando alias, onde ao digitar limpar vai limapr a tela
Set-Alias limpar clear
limpar

