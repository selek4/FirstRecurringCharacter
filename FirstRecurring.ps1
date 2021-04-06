Clear-Host

function get-firstrecurring {
    [CmdletBinding()]
    param (
    [string]$foo
    )
    $InputString = @{}
    $CharArray = $foo.ToCharArray()

    foreach ($char in $CharArray) {
        if($char -in $InputString.Keys) {
            $char
            break
        }
        else {
            $InputString[$char] = $null
        }
    }
}
get-firstrecurring abcdedcba