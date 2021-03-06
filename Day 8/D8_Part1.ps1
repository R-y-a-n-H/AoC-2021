$data = Get-Content -Path "$PSScriptRoot\Input.txt" | ForEach-Object {$_.Split("|")[1].trim(" ")}
[int]$count = "0"

Foreach ($ReadOut in $Data){
    $Digits = ($ReadOut).split(" ")
    ForEach($Digit in $Digits){
        Switch ($Digit.length)
        {
            2 {$count++}
            4 {$count++}
            3 {$count++}
            7 {$count++}
        }

    }
}

$count
