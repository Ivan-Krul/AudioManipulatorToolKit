# user-friendly but manually

#Write-Host "The script will use file1 and file2 as audio files"
#$format = Read-Host "What format of these files"

param (
	[string]$format
)

Start-Process "ffmpeg" -ArgumentList "-i file1$($format)", "-loglevel", "quiet", "file1.mp3" -Wait -NoNewWindow
Start-Process "ffmpeg" -ArgumentList "-i file2$($format)", "-loglevel", "quiet", "file2.mp3" -Wait -NoNewWindow