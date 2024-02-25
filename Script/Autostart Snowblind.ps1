#Get current script location
$thisLoc = $PSScriptRoot

#Get all video files in the script location
$arr = Get-ChildItem $thisLoc .\* -include ('*.mp4', '*.webm', '*.mov', '*.wmv', '*.avi') -recurse | Foreach-Object {$_.Name}

echo "Default video will start in 10 Seconds. To select a specific video press any key!"


#Output for 10 seconds, if no input select first video to show, else show video selection
function Check-Keypress ($sleepSeconds = 10) {
		$timer = [Diagnostics.Stopwatch]::StartNew()
        $interrupted = $false

		while ($timer.elapsed.totalseconds -lt 10) {
			if ($Host.UI.RawUI.KeyAvailable) 
			{
				$selection = $Host.UI.RawUI.ReadKey("NoEcho, IncludeKeyUp, IncludeKeyDown")
				if ($selection.KeyDown -eq "True") { 
					$interrupted = $true
					break
				}           
			} 
		}

        $timer.stop()
        return $interrupted
}
If (Check-Keypress){
	$i = 0
	foreach ($v in $arr){
		echo $i": "$v
		++$i	
	}

	$selection = read-host -Prompt "Enter number to play specific video"
}
else{
	write-host 0
}

#start VLC player on the buildin display (--video-x=1920 need to be adjusted depending on resolution and position of the screen, negative value = left side)
	& "C:\Programme\VideoLAN\VLC\vlc.exe" --no-embedded-video --audio --repeat --loop --no-random --autoscale --fullscreen --no-osd --playlist-tree --start-time= --stop-time= --video-x=1920 --video-y=1 --quiet "$($thisLoc)\$($arr[$selection])" vlc://quit


