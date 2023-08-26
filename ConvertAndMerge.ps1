$file1 = Read-Host "Write first file"
$file2 = Read-Host "Write second file"

$resName = ""
$resName = ./common_strings_unfriendly.ps1 -string1 $file1 -string2 $file2

#$format = Get-ChildItem "." | select Extension

$filename1 = Get-ChildItem "." -Filter "$($file1).*"
$filename2 = Get-ChildItem "." -Filter "$($file2).*"

$format = $filename1.Extension

Write-Host "$($filename1) -> file1$($format)"
Write-Host "$($filename2) -> file2$($format)"

Rename-Item -Path "$($filename1)" -NewName "file1$($format)"
Rename-Item -Path "$($filename2)" -NewName "file2$($format)"

./convert_audio_to_mp3_unfriendly.ps1 -format $format -Wait

./merge_two_audio_files_unfriendly.ps1 -resName "$($resName)"

./CleanFileEnviroument.ps1


