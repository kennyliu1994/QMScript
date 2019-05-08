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
MacroID=7d3ec21f-f638-41ad-857d-d7b0842c73de
Description=榮耀的戒指 塔拉諾爾
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
Call Lib.第七史詩.戰鬥()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 947, 529
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 1632, 378
        Delay 444
        LeftDown 1
        Delay 4
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_RED_N_CLICK()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 947, 529
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 314, 135
        Delay 285
        LeftDown 1
        Delay 13
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 726, 245
        Delay 1102
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1164, 689
        Delay 798
        LeftDown 1
        Delay 4
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
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
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 947, 529
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 298, 157
        Delay 340
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 528, 589
        Delay 1071
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1109, 661
        Delay 670
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 1448,581,1800,862,"D:\按鍵精靈2014\screen\epic7_4-4\S.bmp",0.3,intX,intY
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
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 1632, 378
        Delay 444
        LeftDown 1
        Delay 4
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 947, 529
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 314, 135
        Delay 285
        LeftDown 1
        Delay 13
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 726, 245
        Delay 1102
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1164, 689
        Delay 798
        LeftDown 1
        Delay 4
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        MessageBox "END"
    End If
Loop Until intX > 0 And intY > 0
