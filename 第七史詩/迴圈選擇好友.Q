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
Description=迴圈選擇好友
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
    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.CLEAR()
    Call Lib.epic7_ver2.確認()
    Call Lib.epic7_ver2.選擇隊伍()
Next
Call Lib.epic7_ver2.戰鬥開始()
Call Lib.epic7_ver2.CLEAR()
MessageBox "END"
