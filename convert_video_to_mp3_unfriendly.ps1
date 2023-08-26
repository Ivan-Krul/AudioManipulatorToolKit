param (
    [string]$filename,
	[string]$remove
)

Start-Process -FilePath "ffmpeg" -ArgumentList "-i", "`"$($filename)`"", "`"$($filename).mp3`"" -NoNewWindow -Wait

if($remove -eq "yes") {
	Remove-Item $filename
}

