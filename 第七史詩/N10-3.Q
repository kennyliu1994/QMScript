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
Call Lib.第七史詩.GO_W_CLICK()
Call Lib.第七史詩.GO_RED_N_CLICK()
Call Lib.第七史詩.GO_E_CLICK()
Call Lib.第七史詩.GO_E()
Call Lib.第七史詩.GO_S_CLICK()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 947, 529
        Delay 1000
        LeftClick 1
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 326, 157
        Delay 335
        LeftDown 1
        Delay 44
        LeftClick 1
        Delay 4
        LeftUp 1
        MoveTo 615, 357
        Delay 1019
        LeftDown 1
        Delay 1
        LeftDown 1
        MoveTo 867, 450
        Delay 559
        LeftUp 1
        Delay 1
        LeftUp 1
        MoveTo 544, 388
        Delay 687
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1092, 696
        Delay 840
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 4
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_S()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MessageBox "END"
    End If
Loop Until intX > 0 And intY > 0
