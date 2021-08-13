Write-Host " "

$script:time = Get-Date -Format "HH"
$time = $time -as [int]

$script:msg = "Drift-kun!"

if ($time -ge 12) {
    Write-Host "Konnichiwa $($msg)" -ForegroundColor DarkCyan
}
elseif ($time -ge 16) {
    Write-Host "Konbanwa $($msg)" -ForegroundColor Cyan
}
else {
    Write-Host "Ohayo $($msg)" -ForegroundColor DarkYellow
}

Write-Host " "
