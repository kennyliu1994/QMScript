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
MacroID=2b6793c6-a06c-4180-a5d4-327b6b59148b
Description=N5S-8
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
次元龜裂

[Script]
Call Lib.第七史詩.戰鬥()
Call Lib.第七史詩.GO_RED_N()
Call Lib.第七史詩.GO_E()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 304, 150
        Delay 337
        LeftDown 1
        Delay 20
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 460, 417
        Delay 886
        LeftDown 1
        Delay 3
        LeftClick 1
        Delay 3
        LeftUp 1
        MoveTo 1072, 678
        Delay 710
        LeftDown 1
        Delay 5
        LeftClick 1
        Delay 2
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
MessageBox "END"
