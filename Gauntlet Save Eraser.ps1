#Gauntlet Easy Save Reset





Write-Host " _____                   _   _      _     _____                 "
Write-Host "|  __ \                 | | | |    | |   /  ___|                "
Write-Host "| |  \/ __ _ _   _ _ __ | |_| | ___| |_  \ `--.  __ ___   _____ "
Write-Host "| | __ / _` | | | | '_ \| __| |/ _ \ __|  `--. \/ _` \ \ / / _ \"
Write-Host "| |_\ \ (_| | |_| | | | | |_| |  __/ |_  /\__/ / (_| |\ V /  __/"
Write-Host " \____/\__,_|\__,_|_| |_|\__|_|\___|\__| \____/ \__,_| \_/ \___|"
Write-Host "                                                                "
Write-Host "                                                                "
Write-Host "_____                         "
Write-Host "|  ___|                       "
Write-Host "| |__ _ __ __ _ ___  ___ _ __ "
Write-Host "|  __| '__/ _` / __|/ _ \ '__|"
Write-Host "| |__| | | (_| \__ \  __/ |   "
Write-Host "\____/_|  \__,_|___/\___|_|   "
Write-Host "                                                                "
Write-Host "                                                                "
Write-Host "                                                                "
Write-Host "                                                                "
Write-Host "This script will remove all Gauntlet saves from your user." -ForegroundColor Yellow
Write-Host "                                                          "
Write-Host "                                                          "
Write-Host "Make sure Gauntlet is closed before running this script" -ForegroundColor Yellow
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


If (Test-Path "C:\Program Files (x86)\Steam\userdata\$SteamID\258970\remote\gauntlet") {
#Remove Gauntlet file using the directory from the $SteamID variable 
Remove-Item -Force -Path "C:\Program Files (x86)\Steam\userdata\$SteamID\258970\remote\gauntlet"
Write-Host "Gauntlet file has been removed" -ForegroundColor Green
}
Else {
Write-Host "C:\Program Files (x86)\Steam\userdata\$SteamID\258970\remote\gauntlet does not exist!" -ForegroundColor Red
}

write-host "Press any key to continue..."
[void][System.Console]::ReadKey($true)
