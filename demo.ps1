#This is the path to your destination such as external HDD
$path = Read-Host 'What is your path?'

#This will get each item in the destination directory.
$destination_drive = @(Get-ChildItem $path)

#this loop will loop through each item on the external drive or wherever 
#the destination is.
For($itter_each=0; $itter_each -le $destination_drive.Length-1; $itter_each++) {

    #This will get the name of each item on the drive
    $showName = $destination_drive.item($itter_each).name
    
    #This variable stores the items inside the source directory, you must
    #choose a path here.
    $Source_direct  = @(Get-ChildItem 'choose your path here' -Filter $showName)
    
    #All this command does is get results with the full path instead of just
    #the name with the 'fullname' attribute  
    $seasons = Get-ChildItem $Source_direct.fullname -filter Season*

    #this just gets the itemindex of the last item in a directory
    $season_length_char = $seasons[$seasons.length-1]
    $season_name = $season_length_char.name
    
    #This creates a folder in the destination directory to copy into.
    New-Item -Path C:\Dev\Powershell\josh\josh_drive\$showName\$season_name
    -ItemType Directory

    #This joins two paths into one.
    $newpath = Join-Path -Path $destination_drive[$itter_each].fullname 
    -ChildPath $season_length_char.name
    
    #This tool is used to copy and skip existing files, the /E means that it 
    will copy everything including sub-directories.
    robocopy $season_length_char.fullname $newpath /E    
}
