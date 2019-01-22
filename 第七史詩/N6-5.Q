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
MacroID=295ab1fe-ed8b-4ea1-83c6-025d58120003
Description=魔法實驗體 頂級犬齒 無名的光彩 盾牌騎士團信物
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
    FindPic 1506,281,1747,469,"D:\按鍵精靈2014\screen\epic7_4-4\E.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 306, 160
        Delay 310
        LeftDown 1
        Delay 12
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1036, 362
        Delay 1063
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 1
        LeftUp 1
        MoveTo 1118, 675
        Delay 894
        LeftDown 1
        Delay 2
        LeftClick 1
        Delay 2
        LeftUp 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
Call Lib.第七史詩.GO_W()
Call Lib.第七史詩.GO_RED_N_CLICK()
Call Lib.第七史詩.GO_W_CLICK()
Call Lib.第七史詩.GO_W_CLICK()
Call Lib.第七史詩.GO_RED_N_CLICK()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 1448,581,1800,862,"D:\按鍵精靈2014\screen\epic7_4-4\S.bmp",0.3,intX,intY
    If intX > 0 And intY > 0 Then 
        MessageBox "END"
        Delay 1000
    End If
Loop Until intX > 0 And intY > 0
