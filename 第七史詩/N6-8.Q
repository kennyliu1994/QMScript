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
MacroID=7cc98968-d3ff-4501-8c19-d8594e105f5f
Description=野生生物 頂級犬齒
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
MoveTo 1636, 711
Delay 12398
LeftClick 1
//Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_E_CLICK()
Call Lib.第七史詩.GO_S_CLICK()
Do
    Call Lib.第七史詩.寶箱()
    FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
    If intX > 0 And intY > 0 Then 
        MessageBox "END"
    End If
Loop Until intX > 0 And intY > 0