#Reads CSV file
#Author : Sairam
 try
{
    $FilePath = "C:\Users\Sairam\desktop\myCsv.csv"
    $headder = @("first_name","last_name","env_type")
    $records = Import-Csv  $FilePath -Header $headder
    $env = "UAT"

    [int]$i = [int]$records.Count
     Write-Host "The Count: $i"
    if($i -gt 0)
    {       
        $records | Foreach-Object{        
            [string]$env_type = [string]$_.env_type 
            if($env_type.Contains( $env) -or ($env_type -eq "all") )
            {
                Write-Host $env_type       
            }
        }
    }    
}
catch
{
 #write exception to console
 Write-Host $_.Exception.Message
}
