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
MacroID=335f57d3-ed78-4691-bb23-10c8c564093d
Description=阿吉瑪努斯 永恆森林的塵埃
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
        MoveTo 278, 165
        Delay 281
        LeftDown 1
        Delay 12
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 650, 315
        Delay 1080
        LeftDown 1
        Delay 5
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1121, 677
        Delay 783
        LeftDown 1
        Delay 3
        LeftClick 1
        Delay 1
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 2000
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_W()
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_S_CLICK()
Call Lib.第七史詩.GO_W()
Call Lib.第七史詩.GO_RED_N_CLICK()
Call Lib.第七史詩.GO_RED_N_CLICK()
Call Lib.第七史詩.GO_E_CLICK()
Call Lib.第七史詩.GO_E_CLICK()
MessageBox "END"
