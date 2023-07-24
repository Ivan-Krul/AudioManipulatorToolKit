param (
    [string]$resName
)

Write-Host "Received resName: $resName"

# Replace these paths with the actual paths to your audio files
$audioFile1 = "file1.mp3"
$audioFile2 = "file2.mp3"

# Function to get audio duration using ffprobe
function GetAudioDuration($audioPath) {
    $ffprobeOutput = & "ffprobe" -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$audioPath"
    return [double]$ffprobeOutput
}

# Get the duration of each audio file
$duration1 = GetAudioDuration $audioFile1
$duration2 = GetAudioDuration $audioFile2

# Find the shortest duration
$shortestDuration = [math]::Min($duration1, $duration2)

Write-Host "Shortest duration: $shortestDuration seconds"

Write-Host "The script using file1.mp3 and file2.mp3 as audio files to concatanade"



Start-Process "ffmpeg" -ArgumentList "-i", "file1.mp3", "-i", "file2.mp3", "-filter_complex", "[0:a]atrim=0:duration=$($duration1)[a0];[1:a]atrim=0:duration=$($duration2)[a1];[a0][a1]amerge=inputs=2[aout]", "-loglevel", "quiet", "-map", "[aout]", "$($resName).mp3" -NoNewWindow -Wait
