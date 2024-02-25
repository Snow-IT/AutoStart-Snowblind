# AutoStart-Snowblind
Anleitung um bei der Windowsanmeldung automatisch die Videos auf dem Snowblind-Mod wiederzugeben 

## <ins>***Erforderliche/optionale Software und Einstellungen***
- VLC Mediaplayer (muss zusätzlich konfiguriert werden)
- Powershell-Script (stelle ich bereit)
- Konfiguration der Berechtigung zur Ausführung von Powershell-Scripts
- Konfiguration einer Aufgabe im Windows inklusiven Aufgabenplaner
- Rainmeter (optional)
- Lively Wallpapers (optional)
---
<br>

### <ins>***VLC Mediaplayer***
Die Software ist kostenlos und sollte von der Hersteller-Webseite entnommen werden.<br>
[Link zur Herstellerseite](https://www.videolan.org/vlc/index.de.html)<br>

Hierbei handelt es sich um das Program welches zur Wiedergabe der Videos verwendet wird.<br>
Getest habe ich das in der Version `3.0.20`. Ich garantiere nicht für Kompatibilität mit zukünftigen Versionen.<br>

Folgende Einstellungen müssen gemacht werden...<br>

![Config_Interface](/assets/VLC_config_Interface.png)<br>
![Config_Video](/assets/VLC_config_Video.png)<br>
---
<br>


### <ins>***Powershell-Script***
[Link zum Script](/Script/Autostart%20Snowblind.ps1)<br>

Im Grunde wird bei Start des Scripts ein 10 Sekunden Timer gestartet, der im Anschluss das Default-Video abspielt. Das Default-Video wird durch die Position im Videos-Ordner bestimmt (erstes Video bei alphabetischer Sortierung). Die einfachste Methode ein Video an die erste Position zu setzen, ist es das gewünschte Video mit einem "_" (Unterstrich) als Präfix umzubennen.<br>

Der Timer kann aber auch durch Tastendruck unterbrochen werden. Hierbei wird eine nummerierte Liste aller Videos anzeigt. Gibt man die Nummer des gewünschten Videos und bestätigt mit Enter, wird dieses abgespielt.<br>

In der letzten Zeile des Scripts muss der Parameter `--video-x` angepasst werden. Standardmässig steht dort `--video-x=1920`. Die `1920` steht für die Pixel der Bildschirmauflösung. In diesem Fall wird das Video um 1920 Pixel nach rechts verschoben. Um das Video nach links zu verschieben müsste man eine negative Zahl eingeben.<br>

---
<br>


<ins>***Beispiele:***</ins><br><br>
![Config_1920](/assets/Script_config_1920.png)<br>
Hauptdisplay mit einer Auflösung von `1920 x 1080` steht `links` vom PC mit Snowblind-Mod Display. Also wird der Parameter `--video-x=1920` eingetragen.<br><br>

![Config_1280](/assets/Script_config_1280.png)<br>
Hauptdisplay mit einer Auflösung von `1280 x 720` steht `rechts` vom PC mit Snowblind-Mod Display. Also wird der Parameter `--video-x=-1280` eingetragen.<br><br>

---
<br>


### <ins>***Berechtigungen für Powershell-Scripts***
Um das Powershell Script ausführbar auf Ihrem System zu machen muss folgender Befehl in einer Powershell Console eingegeben werden.
Windows-Taste drücken und Powershell eingeben. Rechtsklick auf das Programm und als `Administrator ausführen` auswählen. Den Befehl in die Console eingeben...<br> 
```Powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -force
```
<br><br>

---
<br>


### <ins>***Konfiguration Aufgabenplanung***
Um das automatische Ausführen des Powershell-Scripts durchzuführen, müssen wir im Windows-eignenen Aufgabenplaner eine Aufgabe erstellen.<br>

1. In der Windows-Suche nach Aufgabenplanung suchen
![Taskscheduler_search](/assets/Taskscheduler_search.png)<br><br>
2. Rechtsklick auf `Aufgabenplanung(Lokal)` und `Aufgabe erstellen...` auswählen
![Taskscheduler_action](/assets/Taskscheduler_action.png)<br><br>
3. Einen Namen vergeben (z.b. AutoStart_Snowblind-Mod) und in den Reiter `Trigger` wechseln. Über den Knopf `Neu...` einen neuen Trigger erstellen und `Bei Anmeldung` auswählen.
![Taskscheduler_action_trigger](/assets/Taskscheduler_action_trigger.png)<br><br>
4. In den Reiter `Aktionen` wechseln und mit dem Knopf `Neu...` eine neue Aktion erstellen.<br>
Bei Programm/Skript `powershell` eingeben und als Parameter muss der Ablageort unseres Powershell-Scripts angegeben werden ...
```
-File "C:\HIER\STEHT\DEIN\ABLAGEORT\Snowblind_vids\Autostart Snowblind.ps1"
```
![Taskscheduler_action_action](/assets/Taskscheduler_action_action.png)<br><br><br>


Es sind keine weiteren Einstellungen zu tätigen.
Einfach mit `OK` bestätigen und die Aufgabe ist fertig eingerichtet.<br><br>

---
<br>


### <ins> ***Optionale Programme***
Zur Nutzung der optionalen Programme biete ich keine Anleitung, da dies komplett dem Geschmack der jeweiligen Person entspricht. Bitte ladet euch die Software direkt auf den Herstellerseiten...<br>

[Link zu Rainmeter](https://www.rainmeter.net/)<br>
[Link zu Lively Wallpaper](https://apps.microsoft.com/detail/9ntm2qc6qws7?hl=de-DE&gl=DE)<br>

