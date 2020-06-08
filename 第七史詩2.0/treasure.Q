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
MacroID=5dd314f7-8d16-488c-9020-a4e07b7b1956
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
    dm_ret = dm.CmpColor(1630, 977, "a08c6b", 0.95)
    If dm_ret = 0 Then 
        MoveTo 1747, 91
        Delay 1000
        LeftClick 1
        Delay 1000
    End If
    Call Lib.epic7.Ä_½c()
Loop
