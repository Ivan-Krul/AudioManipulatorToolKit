$audios = Get-ChildItem -Filter "*.wav"

foreach($audio in $audios)
{
    if($audio.BaseName -ne "audio")
    {
        Write-Host $audio.BaseName
        Move-Item $audio "$($audio.BaseName)/$($audio)"
    }
    
}
