param (
	[string]$string1,
	[string]$string2
)

function Get-CommonCharacters {

    
    $commonChars = $string1.ToCharArray() | Where-Object { $string2.Contains($_) }
    $resultString = $commonChars -join ''
    
    return $resultString
}

# Call the function and get the result
$result = Get-CommonCharacters

# Output the result
"$result"