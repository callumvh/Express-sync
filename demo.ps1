##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uK1
##Nc3NCtDXThU=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4tI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlaDjpbQ9QhH6lzrUHsja8mXhbyo14mA/OX8ohrKSogdWUA5kzH5ZA==
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
$path = Read-Host 'What is your path?'

$joshDrive = @(Get-ChildItem $path)
#need to add tv 1 when working

#this loop will loop through joshs drive
For($jDrive=0; $jDrive -le $joshDrive.Length-1; $jDrive++) {
    #$jDrive
    #this gets the show name from the joshs drive
    $showName = $joshDrive.item($jDrive).name
    
    #this is the season length
    
    $Osiris  = @(Get-ChildItem '\\osiris\TVShows\' -Filter $showName)
    $Osiris  += @(Get-ChildItem '\\osiris\Grabit\' -Filter $showName)
    
    #$showName
    
    $seasons = Get-ChildItem $Osiris.fullname -filter Season*
    $season_length = $seasons.length
    $season_length_char = $seasons[$seasons.length-1]
    $season_name = $season_length_char.name
    
   
    New-Item -Path C:\Dev\Powershell\josh\josh_drive\$showName\$season_name -ItemType Directory
    $newpath = Join-Path -Path $joshDrive[$jdrive].fullname -ChildPath $season_length_char.name
    


    robocopy $season_length_char.fullname $newpath /E
    
    
    
     
 
  

    #$season_length = Get-ChildItem $osiris.item($jDrive).fullname -Filter season*

    
    #$season_name = $season_length.item($season_length.length-1).name
    #this will robocopy the highest season folder to the folder on joshs pc
    #$largest_season = $season_length.item($season_length.length-1).name

    #new-item -Name "$largest_season" -ItemType C:\Dev\Powershell\josh\josh_drive\$joshDrive.Item($jDrive)


    #robocopy $season_length.item($season_length.length-1).fullname $joshDrive.Item($joshDrive.Length-1).fullname+$largest_season\ /COPYALL /E
    
}
#$jDrive=0


