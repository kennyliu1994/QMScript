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
MacroID=7310245f-61fc-47cc-89c0-a41f8083fdf9
Description=機械18步行用動力迴路
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
Sub 機械
    Call Lib.epic7.GO_E()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            MoveTo 1071, 677
            Delay 1087
            LeftClick 1
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_E_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 285, 162
            Delay 251
            LeftClick 1
            MoveTo 250, 427
            Delay 1221
            LeftClick 1
            MoveTo 1063, 684
            Delay 935
            LeftClick 1
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_S_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 310, 152
            Delay 332
            LeftClick 1
            MoveTo 603, 77
            Delay 1588
            LeftClick 1
            MoveTo 1141, 687
            Delay 839
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1661,747, "ffd276", 1.0)
        If dm_ret = 0 Then
            Delay 1000
            MoveTo 965, 582
            LeftClick 1
            Delay 1000
            MoveTo 1095, 676
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
For i - 1
    Call Lib.epic7.戰鬥開始dm()
    Call 機械()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 機械()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
