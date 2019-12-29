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
MacroID=295ab1fe-ed8b-4ea1-83c6-025d58120003
Description=魔法實驗體8無名的光彩盾牌騎士團信物
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
Sub 魔法實驗體()
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 306, 160
            Delay 310
            LeftClick 1
            MoveTo 1036, 362
            Delay 1063
            LeftClick 1
            MoveTo 1118, 675
            Delay 894
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N_CLICK()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_RED_N_CLICK()
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
            Delay 2000
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
    Call 魔法實驗體()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 魔法實驗體()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
