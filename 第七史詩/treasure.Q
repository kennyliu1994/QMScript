[General]
SyntaxVersion=2
BeginHotkey=20
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=ec1a0359-be11-4f84-9ee6-4194c0921143
Description=treasure
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
Do
    FindPic 151, 468, 1764, 664, "D:\«öÁäºëÆF2014\screen\epic7_4-4\Ä_½c.bmp", 0.3, BoxX, BoxY    
    If BoxX > 0 And BoxY > 0 Then 
        MoveTo BoxX + 65, BoxY + 43
        LeftClick 2
    End If
Loop