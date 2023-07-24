# Get the user's Documents directory
$documentsPath = [Environment]::GetFolderPath("MyMusic")

# Define the target folder path
$musicFolder = Join-Path -Path $documentsPath -ChildPath "Signed"

# Check if the "Music" folder exists, and create it if it doesn't
if (-Not (Test-Path -Path $musicFolder -PathType Container)) {
    New-Item -ItemType Directory -Path $musicFolder | Out-Null
}

# Get all .mp3 files in the current directory
$mp3Files = Get-ChildItem -Path $PSScriptRoot -Filter "*.mp3" -File

# Move each .mp3 file to the Music folder
foreach ($file in $mp3Files) {
    $destinationPath = Join-Path -Path $musicFolder -ChildPath $file.Name
    Move-Item -Path $file.FullName -Destination $destinationPath -Force
}

Write-Host "All .mp3 files have been moved to the Music folder."