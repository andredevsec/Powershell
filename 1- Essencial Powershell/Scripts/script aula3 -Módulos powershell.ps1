<#

#>
# listar modulos
Get-Module -ListAvailable

# filtrar apenas por um modulo como por exemplo smbshare
Get-Command -Module SmbShare

Get-SmbShare

# vamos usar de exemplo que vamos querer ver os modulos de defender

Get-Command -Module Defender

# muitas vezes vamos precisar instalar modulos

cd .\NanoServer\

# é possivel executar repositorios

Get-PSRepository

# o psrGallery e um intruso e ajuda a gerencia muitas coisas no powershell

#https://www.powershellgallery.com/packages/PSDownr/1.0.3.0
# o modulo acima é para baixar video direto do youtube, tem que se atentar em qual instalar para nao baixar um video malicioso
#para usar

Get-YoutubeVideo -Uri #<URL>
start #<caminho do video>

