# Get all files in the target directory
$files = Get-ChildItem -File

# Initialize an empty array to store the filenames with at least one capitalized character
$filenamesWithCapital = @()

# Loop through each file and check if its name has at least one capitalized character
foreach ($file in $files) {
    $originalName = $file.Name

    # Check if the filename contains at least one uppercase character
    if ($originalName -cmatch "[A-Z]") {
        $filenamesWithCapital += $originalName
    }
}

# Display the filenames with at least one capitalized character
$filenamesWithCapital