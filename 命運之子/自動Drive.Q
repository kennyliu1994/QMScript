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
MacroID=56673962-640e-409c-bced-31d4a0cb3c06
Description=自動Drive
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
Do
    Do
        FindPic 936,898,986,929,"D:\按鍵精靈2014\screen\destiny\100%.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1165, 880
            Delay 318
            LeftDown 1
            Delay 22
            LeftClick 1
            Delay 3
            LeftUp 1
            MoveTo 960, 864
            Delay 1100
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        FindPic 936,898,986,929,"D:\按鍵精靈2014\screen\destiny\100%.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1057, 855
            Delay 318
            LeftDown 1
            Delay 22
            LeftClick 1
            Delay 3
            LeftUp 1
            MoveTo 960, 864
            Delay 1100
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
Loop