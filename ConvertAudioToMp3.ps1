# user-friendly but manually
Write-Host "The script will use file1 and file2 as audio files"
$format = Read-Host "What format of these files"

Start-Process "ffmpeg" -ArgumentList "-i file1$($format)", "file1.mp3" -Wait -NoNewWindow
Start-Process "ffmpeg" -ArgumentList "-i file2$($format)", "file2.mp3" -Wait -NoNewWindow