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
MacroID=9760c7bc-d063-4e8a-98f0-5ea43bfb168a
Description=鱗紋部落
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
Call Lib.第七史詩.GO_E()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 257, 153
        Delay 316
        LeftDown 1
        Delay 25
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 496, 467
        Delay 1148
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1115, 677
        Delay 767
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_E()
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_E()
Call Lib.第七史詩.GO_S()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MessageBox "END"
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
