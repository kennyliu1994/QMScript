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
MacroID=e20dfc01-6418-4b2a-94b5-7e6778818957
Description=特殊提醒迴路 信徒
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
Call Lib.第七史詩.戰鬥()
Do
    FindPic 120,804,314,996,"D:\按鍵精靈2014\screen\epic7_4-4\藥水.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 1679, 90
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 309, 156
        Delay 333
        LeftDown 1
        Delay 3
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 795, 843
        Delay 1679
        LeftDown 1
        Delay 3
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1076, 692
        Delay 806
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1679, 91
        Delay 4000
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_E()
Call Lib.第七史詩.GO_RED_N()
Call Lib.第七史詩.GO_E()
Delay 1000
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 315, 157
        Delay 408
        LeftDown 1
        Delay 14
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1041, 207
        Delay 1182
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1099, 694
        Delay 663
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_W()
Call Lib.第七史詩.GO_RED_N()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 947, 529
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 310, 157
        Delay 376
        LeftDown 1
        Delay 14
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1063, 429
        Delay 1030
        LeftDown 1
        Delay 3
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1034, 686
        Delay 935
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1        
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
MessageBox "END"
