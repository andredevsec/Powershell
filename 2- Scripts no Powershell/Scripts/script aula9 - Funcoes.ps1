<#
Funções
São comandos em um script que vai durar apenas em uma sessao em que estiver sendo executado
Quando criar funções?
- Longos comandos
- Tarefas repetitivas
- Uso de parâmetros
#>

#Exemplo
#Um comando que vai utilizar o WMI fazendo filtro para um drive, selecionar um objeto, vai utilizar uns parametros que o resultado final vai ser mostrar o espaço em disco
function meuHD {
    Get-WmiObject Win32_LogicalDisk -Filter DriveType=3 | Select-Object DeviceID,@{
        'Name'='Tamanho (GB)'; 'Expression'= {
        [math]::truncate($_.size / 1GB)}}, @{'Name'='Espaço Livre (GB)'; 'Expression'={[math]::truncate($_.freespace / 1GB)}}
}

Function somar {
    param ($a, $b)
    $resultado = $a + $b
    Write-Host "A resposta é $resultado"
}
