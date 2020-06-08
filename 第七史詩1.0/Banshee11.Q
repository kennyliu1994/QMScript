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
MacroID=0ede2a93-0776-4aa2-bfd1-11ec2b039950
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
    Delay 5000
    MoveTo 1679, 245
    LeftDown 1
    Delay 5000
    LeftUp 1
    Do
        dm.FindPic 1675,872,1773,969, "picture\epic7\rose3.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1675,872,1773,969, "picture\epic7\vivian3.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1541,871,1643,967, "picture\epic7\kise2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then
            MoveTo 1055, 899 
            Delay 1000
            LeftClick 1
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Delay 3000
            Do
                dm.FindPic 1675,872,1773,969, "picture\epic7\kise3.bmp", "000000", 0.9, 0, intX, intY
                If intX > 0 And intY > 0 Then 
                    MoveTo intX,intY
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
        dm.FindPic 1541,871,1643,967, "picture\epic7\rose2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1541,871,1643,967, "picture\epic7\vivian2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1408,868,1518,971, "picture\epic7\kise1.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 1541,871,1643,967, "picture\epic7\baiken2.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            LeftDoubleClick 1
            Delay 3000
            Do
                dm.FindPic 1675,872,1773,969, "picture\epic7\baiken3.bmp", "000000", 0.9, 0, intX, intY
                If intX > 0 And intY > 0 Then 
                    MoveTo 1055, 899 
                    Delay 1000
                    LeftClick 1
                    MoveTo intX,intY
                    Delay 1000
                    LeftDoubleClick 1
                    Exit Do
                End If
            Loop
            Exit Do
        End If
    Loop
End Sub
i = inputbox("迴圈幾次", "提示")
For i - 1
    Rem restart
    Call Lib.epic7.戰鬥開始dm()
    Call Lib.epic7.行動力不足dm()
    Call main()
    Delay 16000
    dm_ret = dm.FindStr(914,241,994,349, "E","ffff9c-101010", 1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1330, 678
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
    Call Lib.epic7.確認dm()
Next
Rem restart2
Call Lib.epic7.戰鬥開始dm()
Call Lib.epic7.行動力不足dm()
Call main()
Delay 16000
dm_ret = dm.FindStr(914,241,994,349, "E","ffff9c-101010", 1.0,intX,intY)
If intX > 0 And intY > 0 Then 
    MoveTo 1330, 678
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
    Goto restart2
End If
Call Lib.epic7.結束dm()
