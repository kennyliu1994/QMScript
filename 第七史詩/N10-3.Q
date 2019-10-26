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
MacroID=7d3ec21f-f638-41ad-857d-d7b0842c73de
Description=塔拉諾爾31榮耀的戒指
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
Sub 塔拉諾爾
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_RED_N_CLICK()
    Call Lib.epic7.GO_RED_N_CLICK()
    Call Lib.epic7.GO_E_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 308, 156
            Delay 416
            LeftClick 1
            MoveTo 422, 680
            Delay 1354
            LeftClick 1
            MoveTo 1114, 675
            Delay 951
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容========== 
            Delay 2000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 319, 213
            MoveTo 320, 172
            Delay 502
            LeftClick 1
            MoveTo 709, 259
            Delay 1040
            LeftClick 1
            MoveTo 1172, 681
            Delay 696
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
dm_ret = dm.SetDict(0, "epic7_normal.txt")
i = inputbox("迴圈幾次", "提示")
For i - 1
    Call Lib.epic7.戰鬥開始dm()
    Call 塔拉諾爾()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 塔拉諾爾()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
