Write-Color " "

$script:time = Get-Date -Format "HH"
$time = $time -as [int]

$script:msg = "$($env:username)-kun!"

if ($time -ge 12) {
    Write-Color -Text "Konnichiwa $($msg)" -Color DarkCyan
}
elseif ($time -ge 16) {
    Write-Color -Text "Konbanwa $($msg)" -Color Cyan
}
else {
    Write-Color -Text "Ohayo $($msg)" -Color DarkYellow
}

Write-Color " "

function My
{
    cd "E:/Gate of Steiner/Code/"
}
