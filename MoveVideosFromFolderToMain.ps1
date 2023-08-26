Clear-Host
$folders = Get-ChildItem -Directory

foreach($folder in $folders)
{
    Write-Host $folder
    Move-Item "./$folder/$($folder).mp4" "./$($folder).mp4"
}
