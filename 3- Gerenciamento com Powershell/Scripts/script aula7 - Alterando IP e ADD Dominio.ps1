<#
Alterando endereço IP e Adicionando ao Dominio
#>

Get-NetIPConfiguration

Get-NetIPAddress

#Para configurar um novo IP
# interface e a placa de rede usada, defult gateway e o gatewar padrao, addres family e a familia o ip e o prefixo e o prefxo do ip
New-NetIPAddress 192.168.1.102 -InterfaceAlias Ethernet2 -DefaultGateway 192.168.1.1 -AddressFamily IPv4 -PrefixLength 24

#Segundo passo seria colocar no dominio
#definindo o servidor dns
Set-DnsClientServerAddress -InterfaceAlias Ethernet2 -ServerAddresses 192.168.1.123

#deixando o DHC
Set-NetIPInterface -InterfaceAlias Ethernet2 -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceAlias Ethernet2 -ResetServerAddresses

#Adicionando a maquina no dominio, poderia ler uma lista de computadores em um txt por exemplo
Add-Computer -ComputerName nomecomputador -DomainName "NomeDomino.local"

#se executar vi pedir as credenciais