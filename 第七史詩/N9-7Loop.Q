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
MacroID=4eea5154-44d0-4311-81c8-d6160dcf1f0f
Description=人造生物27畸形果凍靈魂火花
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
Sub 人造生物
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_S_CLICK()
    Call Lib.epic7.GO_E_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 264, 161
            Delay 317
            LeftClick 1
            MoveTo 410, 827
            Delay 1229
            LeftClick 1
            MoveTo 1093, 647
            Delay 881
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 312, 148
            Delay 333
            LeftClick 1
            MoveTo 856, 393
            Delay 1519
            LeftClick 1
            MoveTo 1056, 708
            Delay 654
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
    Call 人造生物()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 人造生物()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
