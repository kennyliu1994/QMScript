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
Description=基本Loop
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
i = inputbox("1 選擇好友" & vbcr & "2 不選擇好友(自動消耗葉子)", "提示")
If i = 1 Then Call 選擇好友()
If i = 2 Then Call 不選擇好友()
Sub 選擇好友
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
End Sub
Sub 不選擇好友
    i = inputbox("迴圈幾次", "提示")
    For i - 1
        Call Lib.epic7_ver2.戰鬥開始()
        Delay 2000
        FindPic 1030,692,1117,748,"D:\按鍵精靈2014\screen\epic7_4-4\購買.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1073, 717
            LeftClick 1
            Call Lib.epic7_ver2.戰鬥開始()
        End If
        Call Lib.epic7_ver2.CLEAR()
        Call Lib.epic7_ver2.確認()
    Next
    Call Lib.epic7_ver2.戰鬥開始()
    Delay 2000
    FindPic 1030,692,1117,748,"D:\按鍵精靈2014\screen\epic7_4-4\購買.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo 1073, 717
        LeftClick 1
        Call Lib.epic7_ver2.戰鬥開始()
    End If
    Call Lib.epic7_ver2.CLEAR()
    MessageBox "END"
End Sub
