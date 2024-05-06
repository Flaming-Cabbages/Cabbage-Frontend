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

If you use FFmpeg or YT-dlp, you are subject to their respective license agreements/Terms of Service

------- START README --------

Hi there, you must be setting up YT-dlp or something

So to use this I wasn't sure if I was allowed to include things like the actual build of ffmpeg or YT-dlp,
so I didn't include them here, you'll need to install them yourself.



ffmpeg can be downloaded for Windows Here: https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip

you may notice that the website is not ffmpeg's actual website, this is the page that the main page will
send you to if you choose to download with Windows. This is a compiled Windows version.
If you're not comfortable trusting me on this, here's ffmpeg's website: https://ffmpeg.org/download.html
You just need to select the option with the Windows logo, and I usually use the gyan.dev builds.



YT-dlp can be downloaded for Windows here: https://github.com/yt-dlp/yt-dlp/releases
You should see a box that has the label "Latest". Look through this box for the file named "yt-dlp.exe"
Download the file by clicking on it



Once you have both ffmpeg as well as yt-dlp downloaded, we need to move some stuff in file manager.
You may notice that in this folder there is another folder named 'Files'. This is where ffmpeg and yt-dlp
must go.

To correctly put ffmpeg into the folder, place the .zip file in the 'Files' folder, right-click on the .zip and
select 'Extract all'. once the extraction has completed, rename the new folder that it created to 'ffmpeg'
You can now move yt-dlp in by simply copying the yt-dlp.exe file that you downloaded to the 'Files' folder

After you have finished moving both ffmpeg and yt-dlp, the 'Files' folder should contain one folder named
'ffmpeg', and one file named yt-dlp.exe. If you don't see the '.exe' on the end of 'yt-dlp' you most likely
just have file extensions turned off in Windows. This is fine and it will still work.


After you have the files moved over, navigate back to the main folder of this program and run the 'Run' file.
DO NOT RUN AS ADMINISTRATOR, as it will not function.

When you run the file (You may need to tell Windows that it's ok to run) you will get a text-based interface
that is very easy to use. I would recommend starting with the update option just to make sure that yt-dlp is
as up to date as possible.

The tool can take either a single video or an entire playlist. Please note that yt-dlp cannot download private
playlists, it can only download private or unlisted playlists. I usually just keep my playlists unlisted.



TROUBLESHOOTING

If the program spits out something like "Invalid Path - Could not find folder 'ffmpeg'" or something like that
you need to make sure that there isn't a second folder inside the 'ffmpeg' folder that you set up. Open the
folder and check. The 'ffmpeg' folder should contain 3 folders and 2 files. If the folder only has 1 folder
and no files inside it, open the single folder and copy the files and folders from that folder into your
'ffmpeg' folder.

If you get an error that says that it can't find the yt-dlp.exe file, you need to make sure that the yt-dlp.exe
file is present in the 'Files' folder. If it isn't, place it there and make sure that it's named 'yt-dlp'


You shouldn't really run into any other issues



-Flaming_Cabbages 3/14/24
