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
Description=頂級犬齒
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
MoveTo 1636, 711
Delay 12398
LeftClick 1
Call Lib.第七史詩.GO_S()
Call Lib.第七史詩.GO_E()
Call Lib.第七史詩.GO_S()
MessageBox "END"
