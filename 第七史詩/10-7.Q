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
MacroID=c77a55c5-253e-47de-9ba8-f5cec92f52e7
Description=10-7
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
Sub 測試
    Call Lib.epic7.GO_S()
    Do
        dm_ret = dm.FindStr(1064,679,1147,726, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            MoveTo 815,699
            Delay 2000
            LeftClick 1
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.FindStr(1064,679,1147,726, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            MoveTo 815,699
            Delay 2000
            LeftClick 1
            Exit Do
        End If
    Loop
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 263, 132
            Delay 303
            LeftClick 1
            MoveTo 434, 513
            Delay 1046
            LeftClick 1
            MoveTo 1062, 703
            Delay 878
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop    
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            MoveTo 965, 582         
            Delay 1000
            LeftClick 1
            MoveTo 1095, 676
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
i = inputbox("迴圈幾次", "提示")
For i
    Call Lib.epic7.戰鬥開始()
    Call 測試()
    Call Lib.epic7.CLEAR()
    Call Lib.epic7.確認()
    Call Lib.epic7.準備戰鬥()
    Call Lib.epic7.選擇隊伍()
Next
Call Lib.epic7.結束()
