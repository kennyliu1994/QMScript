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
MacroID=02e6da11-d869-4db0-98d2-1a1ff4541e11
Description=test
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
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "Terra.txt")
Sub up(t)
    MoveR 0, -88*t
    Delay 500
End Sub
Sub down(t)
    MoveR 0, 88*t
    Delay 500
End Sub
Sub left(t)
    MoveR -88*t, 0
    Delay 500
End Sub
Sub right(t)
    MoveR 88*t, 0
    Delay 500
End Sub
//Do
//    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
//    If intX > 0 And intY > 0 Then         
//        MoveTo 1093,518
//        Delay 500
//        LeftDown 1
//        Delay 500
//        up (2)
//        LeftUp 1
//        Exit Do
//    End If    
//Loop
//MoveTo 1093,734
//Do
//    Delay 1000
//    LeftClick 1
//    dm_ret = dm.FindStr(973,235,1017,261,"Fate","ffffff-303030",1.0,intX,intY)
//    If intX > 0 And intY > 0 Then 
//        MoveTo 1001,942
//        Delay 500
//        LeftClick 1
//        Exit Do
//    End If 
//Loop
Do
    dm_ret = dm.FindStr(1580, 270, 1643, 303, "安裝", "f6fbf9-303030", 1.0, intX, intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1616,288
        Delay 500
        LeftClick 1
        MoveTo 262,26
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
