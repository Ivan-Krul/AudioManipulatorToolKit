$name = Read-Host "What file do you prefer to compress"

$cVideoBitRate = @("24k", "48k", "64k", "128k", "256k", "512k", "1M")
$cAudioBitRate = @("16k","32k", "64k", "128k", "148k", "192k", "256k")
$cFrames = @(12,18,24,25,30,48,60)
$cResolution = @("256x144","512x288","640x360","800x480","960x540","1280x720","1920x1080")
$cSampleRate = @(8000, 16000, 20000, 24000, 44100, 48000, 64000)
$index = 1

foreach($bitrate in $cVideoBitRate)
{
    Write-Host "Video bitrate Option $($index): $($bitrate)"
    $index += 1
}

$vidBitRate = Read-Host "What quality is for video bitrate(What option do you prefer)"
$index = 1


foreach($bitrate in $cAudioBitRate)
{
    Write-Host "audio bitrate Option $($index): $($bitrate)"
    $index += 1
}

$audBitRate = Read-Host "What quality is for audio bitrate(What option do you prefer)"
$index = 1

foreach($frames in $cFrames)
{
    Write-Host "frame-rate Option $($index): $($frames)"
    $index += 1
}

$frameRate = Read-Host "What frame-rate is for video(What option do you prefer)"

$index = 1

foreach($sam in $cSampleRate)
{
    Write-Host "sample-rate Option $($index): $($sam)"
    $index += 1
}

$sampl = Read-Host "What sample-rate is for audio(What option do you prefer)"
$index = 1

foreach($res in $cResolution)
{
    Write-Host "resolutions Option $($index): $($res)"
    $index += 1
}

$resol = Read-Host "What resolution is for video(What option do you prefer)"

Start-Process "ffmpeg" -ArgumentList "-i", "`"$($name)`"", "-b:v", $cVideoBitRate[$vidBitRate-1], "-b:a", $cAudioBitRate[$audBitRate-1], "-r", $cFrames[$frameRate - 1], "-ar", $cSampleRate[$sampl-1], "-s", $cResolution[$resol-1], "`"New $($name)`"" -NoNewWindow -Wait
