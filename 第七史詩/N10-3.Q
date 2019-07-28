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
Description=塔拉諾爾31
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
Call Lib.第七史詩.GO_E_CLICK()
Call Lib.第七史詩.GO_RED_N_CLICK()
Call Lib.第七史詩.GO_RED_N_CLICK()
Call Lib.第七史詩.GO_E_CLICK()
Do
    FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 308, 156
        Delay 416
        LeftDown 1
        Delay 1
        LeftDown 1
        Delay 5
        LeftDown 1
        Delay 11
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 422, 680
        Delay 1354
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1114, 675
        Delay 951
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容========== 
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_E()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 319, 213
        MoveTo 320, 172
        Delay 502
        LeftDown 1
        Delay 18
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 709, 259
        Delay 1040
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1172, 681
        Delay 696
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
        MessageBox "END"
    End If
Loop Until intX > 0 And intY > 0
