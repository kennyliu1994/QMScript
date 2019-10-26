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
MacroID=c78e2659-cada-4b10-8952-9de7ebc13f05
Description=不死生物21血塵之骨詛咒的灰燼
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
Sub 不死生物
    Call Lib.epic7.GO_S_CLICK()
    Call Lib.epic7.GO_W_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 317, 153
            Delay 345
            LeftClick 1
            MoveTo 999, 310
            Delay 1358
            LeftClick 1
            MoveTo 1083, 678
            Delay 782
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N_CLICK()
    Call Lib.epic7.GO_W_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 320, 153
            Delay 353
            LeftClick 1
            MoveTo 1062, 573
            Delay 1000
            LeftClick 1
            MoveTo 1086, 690
            Delay 678
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
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
    Call 不死生物()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 不死生物()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
