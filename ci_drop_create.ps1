$ErrorActionPreference = 'Stop'
Push-Location
Import-Module SQLPS -DisableNameChecking
Pop-Location
$serverPath = "SQLSERVER:\SQL\localhost\SQLEXPRESS"
$databaseName = "Payroll_ci"

$databasePath = Join-Path $serverPath "Databases\$databaseName"
if(Test-Path $databasePath)
{
    Invoke-Sqlcmd "USE [master];ALTER DATABASE [$databaseName] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;DROP DATABASE [$databaseName]"
}
Invoke-Sqlcmd "CREATE DATABASE [$databaseName]"

flyway -configFile="conf\ci.conf" migrate
if ($LastExitCode -ne 0) 
{
    throw "flyway migrate failed with exit code $LastExitCode."
}