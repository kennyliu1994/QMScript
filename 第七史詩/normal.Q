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
MacroID=55ab217a-9ab4-4dea-8b3a-94a80e4e6ff9
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
    For i
        Call Lib.epic7.戰鬥開始()
        Call Lib.epic7.CLEAR()
        Call Lib.epic7.確認()
        Call Lib.epic7.重新進行()
        Call Lib.epic7.選擇隊伍()
    Next
    Call Lib.epic7.結束()
End Sub
Sub 不選擇好友
    i = inputbox("迴圈幾次", "提示")
    For i
        Call Lib.epic7.戰鬥開始()
        Call Lib.epic7.行動力不足()
        Call Lib.epic7.CLEAR()
        Call Lib.epic7.確認()
        Call Lib.epic7.重新進行()
    Next
    Call Lib.epic7.結束()
End Sub
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
i = inputbox("1 選擇好友" & vbcr & "2 不選擇好友(自動消耗葉子)", "提示")
If i = 1 Then Call 選擇好友()
If i = 2 Then Call 不選擇好友()
