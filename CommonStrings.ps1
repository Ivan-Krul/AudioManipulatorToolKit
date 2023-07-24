function Get-CommonCharacters {
    param (
        [string]$string1,
        [string]$string2
    )
    
    $commonChars = $string1.ToCharArray() | Where-Object { $string2.Contains($_) }
    $resultString = $commonChars -join ''
    
    return $resultString
}

# Get input strings from the user
$string1 = Read-Host
$string2 = Read-Host 

# Call the function and get the result
$result = Get-CommonCharacters -string1 $string1 -string2 $string2

# Output the result
Write-Host "$result"