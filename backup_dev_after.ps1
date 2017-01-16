Push-Location
Import-Module SQLPS -DisableNameChecking
Pop-Location
$serverPath = "SQLSERVER:\SQL\localhost\SQLEXPRESS"
$databaseName = "Payroll"
$backupTo = Join-Path(Get-Location)"$databaseName-after.bak"
Backup-SqlDatabase -Path $serverPath -Database $databaseName -BackupFile $backupTo