$scriptFiles = Get-ChildItem . -Filter "*.ps1"

$capitalScripts = @()

foreach ($file in $scriptFiles) {
    if ($file.BaseName -cmatch "[A-Z]") {
        $capitalScripts += $file.Name
    }
}

if ($capitalScripts.Count -gt 0) {
    Write-Host "PowerShell script names containing capital letters:"
    foreach ($script in $capitalScripts) {
        Write-Host $script
    }
} else {
    Write-Host "No PowerShell script names containing capital letters found."
}