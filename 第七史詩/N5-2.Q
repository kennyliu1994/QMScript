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
MacroID=335f57d3-ed78-4691-bb23-10c8c564093d
Description=N5-2
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
Sub 戰鬥()
    Do 
        FindPic 1347,837,1513,943,"D:\按鍵精靈2014\screen\epic7_4-4\戰鬥開始.bmp",0.6,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1399, 896
            Delay 359
            LeftDown 1
            Delay 12
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1071, 677
            Delay 1087
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_E()
    Do
        Call 寶箱()
        FindPic 1506,281,1747,469,"D:\按鍵精靈2014\screen\epic7_4-4\E.bmp",0.3,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 378
            Delay 844
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_RED_N()
    Do
        Call 寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 282, 373
            Delay 388
            LeftDown 1
            Delay 3
            LeftDown 1
            MoveTo 282, 374
            Delay 126
            LeftUp 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_W()
    Do
        Call 寶箱()
        FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 288, 711
            Delay 464
            LeftDown 1
            Delay 17
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_S()
    Do
        Call 寶箱()
        FindPic 1448,581,1800,862,"D:\按鍵精靈2014\screen\epic7_4-4\S.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 718
            Delay 492
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub 寶箱()
    FindPic 151, 468, 1764, 664, "D:\按鍵精靈2014\screen\epic7_4-4\寶箱.bmp", 0.6, BoxX, BoxY
    FindPic 151, 468, 1764, 664, "D:\按鍵精靈2014\screen\epic7_4-4\寶箱.bmp", 0.6, BoxX, BoxY
    If BoxX > 0 And BoxY > 0 Then 
        MoveTo BoxX + 65, BoxY + 43
        LeftClick 1        
    End If
End Sub
Call 戰鬥()
Call GO_E()
Call GO_RED_N()
Call GO_W()
Call GO_S()
Delay 2000
Call GO_S()
Call GO_E()
Delay 2000
Call GO_RED_N()
Do
    Call 寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 274, 139
        Delay 297
        LeftDown 1
        Delay 16
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 635, 316
        Delay 1400
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1070, 681
        Delay 783
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
MessageBox "END"
