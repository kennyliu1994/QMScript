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
MacroID=646abc4a-3d88-49e4-b935-487f09161f10
Description=treasure
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
Sub Ä_½c()
    FindPic 151, 468, 1764, 664, "D:\«öÁäºëÆF2014\screen\epic7_4-4\Ä_½c.bmp", 0.6, BoxX, BoxY
    FindPic 151, 468, 1764, 664, "D:\«öÁäºëÆF2014\screen\epic7_4-4\Ä_½c.bmp", 0.6, BoxX, BoxY
    If BoxX > 0 And BoxY > 0 Then 
        MoveTo BoxX + 65, BoxY + 43
        LeftClick 1
    End If
End Sub
Sub ­ô¥¬ªL()
    FindPic 116,366,1802,635,"D:\«öÁäºëÆF2014\screen\epic7_4-4\­ô¥¬ªL.bmp",0.2,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 51, intY +110
        LeftClick 1
    End If
End Sub
Do
    Call Ä_½c()
Loop 
