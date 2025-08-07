#Requires -Version 7.4

# This file is only used in the PowerShell 7 in GitHub Actions environment and should not be executed manually in a development environment.
$deadline = (Get-Date).AddMinutes(10)
$state = "UNKNOWN"
while ((Get-Date) -lt $deadline)
{
    $now = Get-Date
    $deadlineString = $deadline.ToString("u")
    Write-Host "Waiting for backend: ($state) $now / $deadlineString"
    $rdProcess = Get-Process -Name "Rancher Desktop" -ErrorAction SilentlyContinue | Sort-Object -Property StartTime | Select-Object -First 1
    if (-not $rdProcess)
    {
        $state = "NOT_RUNNING"
        Start-Sleep -Seconds 10
        continue
    }
    $rdEngineJsonPath = Join-Path $env:LOCALAPPDATA "rancher-desktop\rd-engine.json"
    if (-not (Test-Path $rdEngineJsonPath))
    {
        $state = "NO_SERVER_CONFIG"
        Start-Sleep -Seconds 10
        continue
    }
    try
    {
        $state = (rdctl api /v1/backend_state | ConvertFrom-Json).vmState
    }
    catch
    {
        $state = "NO_RESPONSE"
    }
    switch ($state)
    {
        "ERROR" {
            Write-Error "Backend reached error state."
            exit 1
        }
        "STARTED" {
            Write-Host "PID $( $rdProcess.Id ) has reached state $state, accepting"
            exit 0
        }
        "DISABLED" {
            Write-Host "PID $( $rdProcess.Id ) has reached state $state, accepting"
            exit 0
        }
        default {
            Write-Host "Backend state: $state"
        }
    }
    Start-Sleep -Seconds 10
}
Write-Error "Timed out waiting for backend to stabilize."
Write-Error "Current time: $( Get-Date )"
Write-Error "Deadline: $($deadline.ToString("u") )"
exit 1
