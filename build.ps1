Set-StrictMode -Version latest
$ErrorActionPreference = "Stop"
docker build --no-cache .
Write-Output "docker build done!"