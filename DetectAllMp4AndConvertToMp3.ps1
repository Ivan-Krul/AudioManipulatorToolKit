# Get the current directory path
$currentDirectory = Get-Location

# Get all the .mp4 files in the current directory
$mp4Files = Get-ChildItem -Path $currentDirectory -Filter "*.mp4" -File

# Check if any .mp4 files were found
if ($mp4Files.Count -gt 0) {
    Write-Host "Found the following .mp4 files in the current directory:"
    
    # Loop through the .mp4 files and display their names
    foreach ($file in $mp4Files) {
		./convert_video_to_mp3_unfriendly.ps1 -filename "$($file.Name)" -remove "no"
        Write-Host $file.Name
    }
} else {
    Write-Host "No .mp4 files found in the current directory."
}