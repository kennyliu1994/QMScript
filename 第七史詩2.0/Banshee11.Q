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
MacroID=1861f09d-c472-4290-9902-49c8db636846
Description=女妖11
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
dm_ret = dm.SetDict(0, "epic7_normal.txt")
Sub main
    Delay 6000
    MoveTo 1634, 86
    Delay 1000
    LeftClick 1
    MoveTo 1679, 245
    LeftDown 1
    Delay 5000
    LeftUp 1
    Do
        dm.FindPic 1711, 906, 1819, 1018, "picture\epic7\rose3.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1711, 906, 1819, 1018, "picture\epic7\vivian3.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1571, 902, 1684, 1020, "picture\epic7\kise2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then
            MoveTo 1055, 899
            Delay 1000
            LeftClick 1
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Delay 3000
            Do
                dm.FindPic 1711, 906, 1819, 1018, "picture\epic7\kise3.bmp", "000000", 0.9, 0, intX, intY
                If intX > 0 And intY > 0 Then 
                    MoveTo intX, intY
                    Delay 1000
                    LeftDoubleClick 1
                    Exit Do
                End If
            Loop
            Exit Do
        End If
    Loop
    Delay 14000
    MoveTo 1679, 245
    LeftDown 1
    Delay 5000
    LeftUp 1
    Do
        dm.FindPic 1571, 902, 1684, 1020, "picture\epic7\rose2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1571, 902, 1684, 1020, "picture\epic7\vivian2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1431, 901, 1547, 1025, "picture\epic7\kise1.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1571, 902, 1684, 1020, "picture\epic7\baiken2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Delay 3000
            Do
                dm.FindPic 1711, 906, 1819, 1018, "picture\epic7\baiken3.bmp", "000000", 0.9, 0, intX, intY
                If intX > 0 And intY > 0 Then 
                    MoveTo 1055, 899
                    Delay 1000
                    LeftClick 1
                    MoveTo intX, intY
                    Delay 1000
                    LeftDoubleClick 1
                    MoveTo 1634, 86
                    Delay 1000
                    LeftClick 1
                    Exit Do
                End If
            Loop
            Exit Do
        End If
    Loop
End Sub
i = inputbox("迴圈幾次", "提示")
For i
    Rem restart
    Call Lib.epic7.戰鬥開始()
    //    Call Lib.epic7.行動力不足()
    Call main()
    Delay 16000
    dm.FindPic 908, 243, 1005, 366, "picture\epic7\CLEAR.bmp", "000000", 0.8, 0, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
    Else
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 1745, 88
        Delay 799
        LeftClick 1
        MoveTo 957, 457
        Delay 1434
        LeftClick 1
        MoveTo 1073, 619
        Delay 1166
        LeftClick 1
        '==========以上是按鍵精靈錄製的內容==========
        Goto restart
    End If
    Call Lib.epic7.確認()
    Call Lib.epic7.重新進行()
Next
Call Lib.epic7.結束()
