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
MacroID=55343fdd-1ca5-407e-a1f0-941deddeb16f
Description=迴圈屬性
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
i = inputbox("迴圈幾次", "提示")
For i - 1
    Call Lib.第七史詩.戰鬥()
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
Next
Call Lib.第七史詩.戰鬥()
Call Lib.第七史詩.CLEAR()
MessageBox "END"
