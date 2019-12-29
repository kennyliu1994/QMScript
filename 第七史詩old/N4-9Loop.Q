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
MacroID=fc8267ad-402c-43bc-8b91-e0bddbe8a233
Description=信徒45鋒利的矛刃
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
Sub 信徒()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_W()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 298, 187
            Delay 348
            LeftClick 1
            MoveTo 838, 805
            Delay 1334
            LeftClick 1
            MoveTo 1020, 686
            Delay 622
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop    
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_S_CLICK()    
    Do
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 281, 157
            Delay 267
            LeftClick 1
            MoveTo 996, 424
            Delay 1287
            LeftClick 1
            MoveTo 1078, 674
            Delay 694
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
