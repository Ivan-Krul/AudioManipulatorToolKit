$name = Read-Host "What's a video do you prefer to convert to a sound file"
Start-Process -FilePath "ffmpeg" -ArgumentList "-i", "`"$($name)`"", "-ab", "128k", "-f", "mp3", "`"$($name).mp3`"" -NoNewWindow -Wait
Remove-Item "$($name)"