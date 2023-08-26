$folders = Get-ChildItem -Directory

foreach($folder in $folders)
{
    Remove-Item $folder -Recurse
}

