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
MacroID=ec1a0359-be11-4f84-9ee6-4194c0921143
Description=迴圈一般關卡
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
    Call Lib.第七史詩.選擇隊伍()
Next
Call Lib.第七史詩.戰鬥()
Call Lib.第七史詩.CLEAR()
MessageBox "END"
