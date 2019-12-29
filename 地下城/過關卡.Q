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
MacroID=3cf51d76-e1e5-4d05-95d9-f17a4b57c6a7
Description=過關卡
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
//dm_ret = dm.SetDict(0, "epic7_normal.txt")
Sub up(t)
    For t
        MoveR 0, - 92
        Delay 1000
    Next
End Sub
Sub down(t)
    For t
        MoveR 0, 92
        Delay 1000
    Next
End Sub
Sub left(t)
    For t
        MoveR - 101  , 0
        Delay 1000
    Next
End Sub
Sub right(t)
    For t
        MoveR 101 , 0
        Delay 1000
    Next
End Sub
Sub 跑圖
    dm.FindPic 706, 209, 1214, 765, "picture\地下城\門.bmp", "000000", 0.5, 0, intX, intY    
    If intX > 0 And intY > 0 Then 
        doorX = intX + 36
        doorY = intY + 38
        MoveTo doorX, doorY
        LeftDown 1
        Delay 1000
        //往左上
        GetCursorPos x, y
        While y > 301
            Call up(1)
            GetCursorPos x, y
        Wend
        Do
            GetCursorPos x, y
            If x < 807
                Exit Do
            End If
            Call left(1)
            If y < 303 Then 
                Call down(5)
            Else
                Call up(5)
            End If
        Loop
        MoveTo doorX, doorY
        Delay 1000
        //往右下
        GetCursorPos x, y
        While y < 676
            Call down(1)
            GetCursorPos x, y
        Wend
        Do
            GetCursorPos x, y
            If x > 1112
                Exit Do
            End If
            Call right(1)
            If y < 303 Then 
                Call down(5)
            Else
                Call up(5)
            End If
        Loop
        LeftUp 1
        Call 勇者()
        Call BOSS()
        MoveTo doorX, doorY
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub 勇者
    For 50
        dm.FindPic 706, 209, 1214, 765, "picture\地下城\勇者.bmp", "000000", 0.7, 0, intX, intY    
        If intX > 0 And intY > 0 Then 
            MoveTo intX , intY
            Delay 1000
            LeftClick 1
            MoveTo 951,660
            Delay 1000
            LeftClick 1
        End If   
    Next
End Sub
Sub BOSS
    For 50
        dm.FindPic 706, 209, 1214, 765, "picture\地下城\BOSS.bmp", "000000", 0.7, 0, intX, intY    
        If intX > 0 And intY > 0 Then 
            ExitScript
        End If   
    Next
End Sub
Do
    Call 跑圖()
Loop
//Call 勇者()
//Call BOSS()
