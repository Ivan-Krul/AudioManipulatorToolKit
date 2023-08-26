Clear-Host
$folders = Get-ChildItem -Directory
$framerate = Read-Host "What's a framerate?"

foreach($folder in $folders)
{
    Write-Host $folder
    .\rename_all_frames -directory $folder
    Start-Process "ffmpeg" -ArgumentList "-framerate", $framerate, "-i", "`"$($folder)`"/frame%06d.jpg", "-i", "`"$($folder)`"/`"$($folder)`".wav", "-strict", "-2", "`"$($folder)`"/`"$($folder)`".mp4" -NoNewWindow -Wait
}


