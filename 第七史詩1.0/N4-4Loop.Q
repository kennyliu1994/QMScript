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
MacroID=798bf2e3-008a-4a07-8f39-f3b3846baf90
Description=鈴鐺鼠部落29小鼠徽章
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
Sub 鈴鐺鼠部落()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 237, 146
            Delay 374
            LeftClick 1
            MoveTo 463, 492
            Delay 1150
            LeftClick 1
            MoveTo 1102, 665
            Delay 791
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_S()
    Do
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 266, 165
            Delay 281
            LeftClick 1
            MoveTo 600, 585
            Delay 993
            LeftClick 1
            MoveTo 1029, 682
            Delay 655
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 264, 159
            LeftClick 1
            MoveTo 717, 685
            Delay 1215
            LeftClick 1
            MoveTo 1079, 708
            Delay 956
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
For i - 1
    Call Lib.epic7.戰鬥開始dm()
    Call 鈴鐺鼠部落()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 鈴鐺鼠部落()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
