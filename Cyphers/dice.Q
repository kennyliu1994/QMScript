[General]
SyntaxVersion=2
BeginHotkey=119
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=0169d7e6-b580-4a34-92dc-4b2263f55fa8
Description=��l
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
i = inputbox("times", "����")
For i
    MoveTo 949, 510
    Delay 500
    LeftClick 1
    Delay 500
    KeyPress 27,1
    MoveTo 1865, 894
    Delay 500
    LeftClick 1
Next
