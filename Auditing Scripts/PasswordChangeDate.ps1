Import-Module ActiveDirectory
$date = Get-Date -Format "yyyy-MM-dd";
$path = "..\results\{0}.csv" -f $date
get-ADUser -filter * -properties passwordlastset | Sort-Object passwordlastset | Select-Object Name, passwordlastset | Export-Csv -Path $path -NoTypeInformation