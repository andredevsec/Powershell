Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 3am
$umavez = New-JobTrigger -Once -At (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

#Script para fazer backp do meu usuario para o diretorio de script
Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock {
    Copy-Item 'C:\Users\andre\Documents\Scripts Poweshell curso' -Recurse -Force
}
#para ver o schedule job
Get-ScheduledJob Backup | Get-JobTrigger
#para desregistrar o schedule job
Get-ScheduledJob Backup | Unregister-ScheduledJob