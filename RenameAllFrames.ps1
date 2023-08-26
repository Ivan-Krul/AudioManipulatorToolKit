param
(
	[string]$directory
)

function GetNumberFromFile($file)
{
    return $file.BaseName.Split("e")[1]-0
}

function CountDigits($number)
{
    $iters = 1
    if($number -eq 0)
    {
        return $iters
    }

    while($number -cge 1)
    {
        $iters += 1
        $number = $number / 10
    }
    return $iters
}

function ConvertNumberTo06d($number)
{
    $digits = CountDigits($number)   

    $res = ""
    if($number -eq 0)
    {
        return "000000"
    }
    $i = $digits
    while($i -lt 7)
    {
        $res += "0"
        $i += 1
    }

    $res += $number.ToString()
    return $res;
}

Set-Location $directory

$frames = Get-ChildItem -Filter "frame*.jpg"
$lowestNumber = GetNumberFromFile($frames[0])
$number = 0

foreach($frame in $frames)
{
    $number = GetNumberFromFile($frame)
    $res = ConvertNumberTo06d($number - $lowestNumber)
    Rename-Item "$($frame.BaseName)$($frame.Extension)" "frame$($res)$($frame.Extension)"
}

Set-Location ..