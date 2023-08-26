$name = Read-Host "choose a video to compress"
Start-process "ffmpeg" -ArgumentList "-i", $name, "-b:v", "64k", "-b:a", "64k", "-r", "12", "-s", "256x144",  "(144p)$($name)" -NoNewWindow -Wait
