Push-Location
Import-Module SQLPS -DisableNameChecking
Pop-Location
$serverPath = "SQLSERVER:\SQL\localhost\SQLEXPRESS"
$databaseName = "Payroll_compare"
$sourceDatabaseName = "Payroll"
$restoreFrom = Join-Path(Get-Location)"$sourceDatabaseName-before.bak"
$databasePath = Join-Path $serverPath "Databases\$databaseName"
if(Test-Path $databasePath)
{
    Invoke-Sqlcmd "USE [master];ALTER DATABASE [$databaseName] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;DROP DATABASE [$databaseName]"
}
$server = Get-Item $serverPath
$server.Information.MasterDBPath
#Restore-SqlDatabase -Path $serverPath -Database $databaseName -BackupFile $restoreFrom