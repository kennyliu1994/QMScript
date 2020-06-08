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
Description=一般
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
Sub 選擇好友
    i = inputbox("迴圈幾次", "提示")
    For i - 1
        Call Lib.epic7.戰鬥開始dm()
        Call Lib.epic7.CLEARdm()
        Call Lib.epic7.確認dm()
        Call Lib.epic7.選擇隊伍dm()
    Next
    Call Lib.epic7.戰鬥開始dm()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.結束dm()
End Sub
Sub 不選擇好友
    i = inputbox("迴圈幾次", "提示")
    For i - 1
        Call Lib.epic7.戰鬥開始dm()
        Call Lib.epic7.行動力不足dm()
        Call Lib.epic7.CLEARdm()
        Call Lib.epic7.確認dm()
    Next
    Call Lib.epic7.戰鬥開始dm()
    Call Lib.epic7.行動力不足dm()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.結束dm()
End Sub
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
i = inputbox("1 選擇好友" & vbcr & "2 不選擇好友(自動消耗葉子)", "提示")
If i = 1 Then Call 選擇好友()
If i = 2 Then Call 不選擇好友()
