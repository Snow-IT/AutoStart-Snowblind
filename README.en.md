# AutoStart-Snowblind
How to set up your Snowblind-Mod to start videos on Windowslogin

## <ins>***Required/optional software and settings***
- VLC Mediaplayer (have to be configured)
- Powershell-Script (I will provide)
- Configuration of the execution policies for Powershell-Scripts
- Configuration of a task in Windows including taskscheduler
- Rainmeter (optional)
- Lively Wallpapers (optional)
---
<br>


### <ins>***VLC Mediaplayer***
The software is free and should be downloaded from the manufacturer's website.<br>
[Link to manufacturer](https://www.videolan.org/vlc/index.en.html)<br>

This is the program that is used to play the videos.<br>
I have tested this in version `3.0.20`. I do not guarantee compatibility with future versions.<br>

The following settings have to be done...<br>

![Config_Interface](/assets/VLC_config_Interface.png)<br>
![Config_Video](/assets/VLC_config_Video.png)<br>
---
<br>


### <ins>***Powershell-Script***

[Link to Script](/Script/Autostart%20Snowblind.ps1)<br>

Basically, when the script is started, a 10-second timer is started, which then plays the default video. The default video is determined by the position in the videos folder (first video in alphabetical order). The easiest way to set a video to the first position is to rename the desired video with a "_" (underscore) as a prefix.<br> 

The timer can also be interrupted by pressing a button. A numbered list of all videos will be displayed. If you enter the number of the desired video and confirm with Enter, it will be played.<br>

In the last line of the script, the parameter `--video-x` must be adjusted. The default setting is `--video-x=1920`. The `1920` stands for the pixels of the screen resolution. In this case, the video is shifted to the right by 1920 pixels. To move the video to the left, you would have to enter a negative number.<br>

---
<br>


<ins>***Examples:***</ins><br><br>

![Config_1920](/assets/Script_config_1920.png)<br>

Main display with a resolution of `1920 x 1080` is `left` of the PC with Snowblind Mod display. The parameter `--video-x=1920` is therefore entered.<br><br>

![Config_1280](/assets/Script_config_1280.png)<br>
Main display with a resolution of `1280 x 720` is `right` of the PC with Snowblind-Mod display. The parameter `--video-x=-1280` is therefore entered.<br><br>

---
<br>


### <ins>***Execution policy for Powershell-Scripts***
To make the Powershell script executable on your system, the following command must be entered in a Powershell console.
Press the Windows key and enter Powershell. Right-click on the program and select 'Run as administrator'. Enter the command in the console...<br> 
```Powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -force
```
<br><br>

---
<br>


### <ins>***Taskscheduler configuration***
To execute the Powershell script automatically, we need to create a task in the Windows task scheduler.<br>

1. Search for taskscheduler in the Windows search
![Taskscheduler_search](/assets/Taskscheduler_search.png)<br><br>
2. Right-click on `Taskscheduler (local)` and select `Create task...`.
![Taskscheduler_action](/assets/Taskscheduler_action.png)<br><br>
3. Assign a name (e.g. AutoStart_Snowblind-Mod) and switch to the `Triggers` tab. Create a new trigger using the `New...` button and select `On login`.
![Taskscheduler_action_trigger](/assets/Taskscheduler_action_trigger.png)<br><br>
4. Switch to the `Actions` tab and create a new action using the `New...` button.<br>
Enter `powershell` for program/script and the location of our Powershell script must be specified as a parameter ...
```
-File "C:\THIS\IS\YOUR\PATH\Snowblind_vids\Autostart Snowblind.ps1"
```
![Taskscheduler_action_action](/assets/Taskscheduler_action_action.png)<br><br><br>


No further settings need to be done.
Simply confirm with `OK` and the task is set up.<br><br>

---
<br>


### <ins> ***Optional programs***
I do not provide instructions on how to use the optional programs, as this is entirely up to the individual. Please download the software directly from the manufacturer's website...<br>

[Link to Rainmeter](https://www.rainmeter.net/)<br>
[Link to Lively Wallpaper](https://apps.microsoft.com/detail/9ntm2qc6qws7?hl=en-EN&gl=EN)<br>

