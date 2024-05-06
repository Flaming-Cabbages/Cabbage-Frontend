<#
    Cabbage Frontend for YT-dlp
    Copyright (C) 2024 Flaming-Cabbages

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
#>
$location = Get-Location
$ytdlp = "$location\Files\yt-dlp.exe"
$ffmpeg = "$location\Files\ffmpeg\bin\ffmpeg.exe"
$out = "$location\output"
#echo $location

function main{
    Param($option)
    if($option -eq 1){ # Video
        Clear-Host
        Write-Host "Video Download"
        $userinput2 = Read-Host -Prompt "Please enter a URL"
        foreach($char in $userinput2.ToCharArray()){
            if ($char -eq '&') {
                $modifiedInput += '^&'
            } else {
                $modifiedInput += $char
            }
        }
        cmd.exe /C "`"$ytdlp`" `"`"$modifiedInput`"`" -i -o `"$out\%(title)s`" --ffmpeg-location `"$ffmpeg`""
        Sleep 2
        startit
    }elseif($option -eq 2){ # Video (mp4)
        Clear-Host
        Write-Host "Video Download (Always mp4)"
        $userinput2 = Read-Host -Prompt "Please enter a URL"
        foreach($char in $userinput2.ToCharArray()){
            if ($char -eq '&') {
                $modifiedInput += '^&'
            } else {
                $modifiedInput += $char
            }
        }
        cmd.exe /C "`"$ytdlp`" `"`"$modifiedInput`"`" -i -o `"$out\%(title)s`" --recode-video mp4 --ffmpeg-location `"$ffmpeg`""
        Sleep 2
        startit
    }elseif($option -eq 3){ # Audio
        Clear-host
        Write-Host "Audio Download"
        $userinput2 = Read-Host -Prompt "Please enter a URL"
        foreach($char in $userinput2.ToCharArray()){
            if ($char -eq '&') {
                $modifiedInput += '^&'
            } else {
                $modifiedInput += $char
            }
        }
        cmd.exe /C "`"$ytdlp`" `"`"$modifiedInput`"`" --extract-audio --audio-format mp3 -i -o `"$out\%(title)s`" --ffmpeg-location `"$ffmpeg`""
        Sleep 2
        startit
    }elseif($option -eq 4){ # Updates
        Write-Host "Update yt-dlp"
        cmd.exe /C "`"$ytdlp`" -U"
        Sleep 5
        startit
    }elseif($option -eq 5){
        exit
    }else{
        Write-host "Invalid input! Please try again!" -ForegroundColor Red
        Sleep 2
        startit
    }
}

function startit{
    Clear-Host
    Write-Host "Cabbage Frontend for YT-dlp - Copyright (C) 2024 Flaming-Cabbages`nThis program comes with ABSOLUTELY NO WARRANTY; for details check license.txt`nThis is free software, and you are welcome to redistribute it under certain conditions; check license.txt for details" -ForegroundColor Yellow
    Write-Host "Welcome! Please type a number. `n[1] Video Download`n[2] Video Download (Always mp4) (Slower)`n[3] Audio Download`n[4] Update yt-dlp`n[5] Close the program" -ForegroundColor Cyan
    $userinput1 = Read-Host -Prompt "Please choose an option"
    main $userinput1
}
startit