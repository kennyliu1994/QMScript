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
MacroID=0939e4ba-b8fb-4479-ab99-eab1c11d36f7
Description=肥料+親密度
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
    FindPic 120,804,314,996,"D:\按鍵精靈2014\screen\epic7_4-4\藥水.bmp",0.8,intX,intY
    If intX > 0 And intY > 0 Then 
        Delay 1000
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 303, 172
        Delay 200
        LeftDown 1
        Delay 27
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 468, 298
        Delay 870
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1113, 687
        Delay 1119
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        Delay 1000
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 267, 145
        MoveTo 268, 145
        Delay 286
        LeftDown 1
        Delay 14
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 486, 460
        Delay 967
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1127, 694
        Delay 911
        LeftDown 1
        Delay 1
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
Do
    Call Lib.第七史詩.寶箱()
    FindPic 1448,581,1800,862,"D:\按鍵精靈2014\screen\epic7_4-4\S.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        Delay 1000
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 278, 139
        Delay 313
        LeftDown 1
        Delay 27
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 702, 691
        Delay 1055
        LeftDown 1
        Delay 5
        LeftClick 1
        Delay 2
        LeftUp 1
        MoveTo 1116, 680
        Delay 821
        LeftDown 1
        Delay 4
        LeftClick 1
        Delay 2
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
    End If
Loop Until intX > 0 And intY > 0
MessageBox "END"
