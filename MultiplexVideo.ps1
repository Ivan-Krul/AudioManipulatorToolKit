$DIR = "TEMP"

$origin = Read-Host "What video should multiplex?(name and extension)"
$frameQuality = Read-Host "What frame quality do you prefer(1 - 3 - 31)"
$sampleRate = Read-Host "What sample rate is in your video(number in Hz)"

mkdir $DIR

Start-Process "ffmpeg" -ArgumentList "-i", $origin, "-qscale:v", $frameQuality, "$($DIR)/frame%06d.jpg", "-hide_banner" -NoNewWindow -Wait
Start-Process "ffmpeg" -ArgumentList "-i", $origin, "-ab", "160k", "-ac", 2, "-ar", $sampleRate, "-vn", "$($DIR)/audio.wav" -NoNewWindow -Wait
