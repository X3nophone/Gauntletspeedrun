#Gauntlet Easy Save Reset

Write-Host "This script will remove all Gaunlet saves from your user."
Write-Host "Make sure Gauntlet is closed before running this script"
Write-host "Press any key to continue..."
[void][System.Console]::ReadKey($true)
Clear

$SteamID = Get-Childitem -Path "C:\Program Files (x86)\Steam\userdata\" -Directory -Name

If (Test-Path "C:\Users\$([Environment]::UserName)\AppData\Roaming\Arrowhead\") {

#Removes this folder from this directory
Remove-Item -Force -Recurse -Path "C:\Users\$([Environment]::UserName)\AppData\Roaming\Arrowhead\"
Write-Host "Arrowhead folder has been removed" -ForegroundColor Green

}
#If not found user will be told path does not exist 
Else {
Write-Host "C:\Users\$([Environment]::UserName)\AppData\Roaming\Arrowhead\ does not exist!" -ForegroundColor Red
}


#Get Steam ID from directory output to then edit the gaunlet file 




If (Test-Path "C:\Program Files (x86)\Steam\userdata\$SteamID\258970\remote\gauntlet") {
#Remove Gauntlet file using the directory from the $SteamID varriable 
Remove-Item -Force -Path "C:\Program Files (x86)\Steam\userdata\$SteamID\258970\remote\gauntlet"
Write-Host "Gauntlet file has been removed" -ForegroundColor Green
}
Else {
Write-Host "C:\Program Files (x86)\Steam\userdata\$SteamID\258970\remote\gauntlet does not exist!" -ForegroundColor Red
}

write-host "Press any key to continue..."
[void][System.Console]::ReadKey($true)
