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
MacroID=e20dfc01-6418-4b2a-94b5-7e6778818957
Description=信徒9小太陽獎章特殊提醒迴路
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
Sub 信徒
    Call Lib.epic7.GO_S_CLICK()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_S_CLICK()
    Call Lib.epic7.GO_W_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 288, 158
            Delay 398
            LeftClick 1
            MoveTo 930, 227
            Delay 1125
            LeftClick 1
            LeftDown 1
            Delay 3
            LeftDown 1
            MoveTo 727, 674
            Delay 701
            LeftUp 1
            Delay 1
            LeftUp 1
            MoveTo 950, 323
            Delay 825
            LeftClick 1
            MoveTo 1076, 666
            Delay 1439
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 288, 158
            Delay 398
            LeftClick 1
            MoveTo 1057,429
            Delay 825
            LeftClick 1
            MoveTo 1105,674
            Delay 1439
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
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
dm_ret = dm.SetDict(0, "normal.txt")
i = inputbox("迴圈幾次", "提示")
For i - 1
    Call Lib.epic7.戰鬥開始dm()
    Call 信徒()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 信徒()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
