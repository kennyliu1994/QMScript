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
MacroID=bcf89eb0-0226-4220-9668-9ec0b0be3c58
Description=惡魔11Loop
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
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "normal.txt")
i = inputbox("迴圈幾次", "提示")
For i - 1
    Call Lib.epic7_ver2.戰鬥開始dm()
    Call Lib.epic7_ver2.CLEARdm()
    Call Lib.epic7_ver2.確認dm()
    Call Lib.epic7_ver2.選擇隊伍dm()
Next
Call Lib.epic7_ver2.戰鬥開始dm()
Call Lib.epic7_ver2.CLEARdm()
Call Lib.epic7_ver2.結束dm()
