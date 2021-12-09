$Height = Get-Content -Path "$PSScriptRoot\D9_Input.txt"
[int]$Risk = 0

<#
Sanity Check Notes...

Up =  Y - 1, X
Down = Y + 1, X
Left = X - 1, Y
Right = X + 1, Y
#>

For($y=0;$y -lt $Height.Count;$y++){ # Get y axis location
    For($x=0;$x -lt $Height[$y].Length;$x++){ # Get x axis location
    $loc = $Height[$y][$x] # Get Current Location using y & x
    # Get postions around current location if possible to then later compare
    $Up = If($y -gt "0") {$Height[$y - 1][$x]}
    $Down = If($y -lt $Height.Count) {$Height[$y + 1][$x]}
    $Left = If($x -gt "0") {$Height[$y][$x - 1]}
    $Right = If($x -lt $Height.Length) {$Height[$y][$x + 1]}

        If(($Up -ne $null) -or ($Up -lt $Loc)){
            If(($Down -ne $null) -or ($Down -lt $loc)){
                If(($Left -ne $null) -or ($left -lt $loc)){
                    If(($Right -ne $nul) -or ($Right -lt $Loc)){
                        $Risk += ($loc + 1)
                    } # Right If
                }# Left If
            } # Down If
        } # Up If
    } # X for
} #Y for

$risk # output / Answer
