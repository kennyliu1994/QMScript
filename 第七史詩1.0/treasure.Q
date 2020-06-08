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
MacroID=1fa11367-4243-44c4-baed-78e601ae3cd9
Description=Ä_½c
Enable=0
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
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\¤jºz§ä¹Ï"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
Do
    dm_ret = dm.FindStr(1672, 73, 1740, 117, "¸õ¹L", "a7a6a2-303030", 0.8, intX, intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1707,93
        Delay 1000
        LeftClick 1
    End If
    Call Lib.epic7.Ä_½cdm()
Loop
