$PasswordFile = "C:\Users\Sairam\Desktop\ps\Password.txt"
$KeyFile = "C:\Users\Sairam\Desktop\ps\AES.key"

$User = "sairam.konuru@live.com"
$key = Get-Content $KeyFile
$MyCredential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $PasswordFile | ConvertTo-SecureString -Key $key)

$pwd= $MyCredential.Password.ToString()

Write-Host $pwd

 