$TestDir = Join-Path $env:TEMP "PowerShellTest"

Write-Host "Starting harmless PowerShell test..." -ForegroundColor Cyan

New-Item -ItemType Directory -Path $TestDir -Force | Out-Null

$TestFile = Join-Path $TestDir "hello.txt"
"Hello from PowerShell!" | Set-Content $TestFile

Write-Host "`nCreated: $TestFile"
Write-Host "Contents:"
Get-Content $TestFile

Remove-Item $TestDir -Recurse -Force

Write-Host "`nTest completed. Temporary files were cleaned up." -ForegroundColor Green