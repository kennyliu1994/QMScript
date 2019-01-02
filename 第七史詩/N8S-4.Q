[General]
SyntaxVersion=2
BeginHotkey=123
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=bef95b7c-e933-46f1-af8f-c9edc99fd1ce
Description=N8S-4
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
史萊姆

[Script]
Call Lib.第七史詩.戰鬥()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 283, 154
        Delay 377
        LeftDown 1
        Delay 15
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 503, 234
        Delay 1255
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1072, 651
        Delay 950
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_E()
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_RED_N()
Call Lib.第七史詩.GO_RED_N()
//Call Lib.第七史詩.GO_W()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 261, 158
        Delay 319
        LeftDown 1
        Delay 13
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 494, 463
        Delay 1334
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1075, 677
        Delay 774
        LeftDown 1
        Delay 3
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
MessageBox "END"
