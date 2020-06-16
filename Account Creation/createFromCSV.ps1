# Script source: https://blog.netwrix.com/2018/06/07/how-to-create-new-active-directory-users-with-powershell/

# Enter a path to your import CSV file
$ADUsers = Import-csv C:\scripts\newusers.csv

# This method assumes you have already created the OUs for these users
foreach ($User in $ADUsers)
{

       $Username    = $User.username
       $Password    = $User.password
       $Firstname   = $User.givenName
       $Lastname    = $User.familyName
       $OU           = $User.ou
       $Email       = $User.primaryEmail

       # Check if the user account already exists in AD
       if (Get-ADUser -F {SamAccountName -eq $Username})
       {
               #If user does exist, output a warning message
               Write-Warning "A user account $Username has already exist in Active Directory."
       }
       else
       {
              # If a user does not exist then create a new user account
          
        # Account will be created in the OU listed in the $OU variable in the CSV file
              New-ADUser `
            -SamAccountName $Username `
            -UserPrincipalName $Email `
            -Name "$Firstname $Lastname" `
            -GivenName $Firstname `
            -Surname $Lastname `
            -Enabled $True `
            -ChangePasswordAtLogon $True `
            -DisplayName "$Firstname $Lastname" `
            -Department $Department `
            -Path $OU `
            -AccountPassword (convertto-securestring $Password -AsPlainText -Force)

       }
}