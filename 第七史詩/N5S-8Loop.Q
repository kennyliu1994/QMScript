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
MacroID=2b6793c6-a06c-4180-a5d4-327b6b59148b
Description=次元龜裂15夢格時間迴路
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
Sub 次元
    Call Lib.epic7_ver2.GO_RED_N_CLICK()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 304, 150
            Delay 337
            LeftClick 1
            MoveTo 460, 417
            Delay 886
            LeftClick 1
            MoveTo 1072, 678
            Delay 710
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop
    Do
        Call Lib.epic7_ver2.寶箱dm()
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
dm_ret = dm.SetDict(0, "normal.txt")
i = inputbox("迴圈幾次", "提示")
For i - 1
    Call Lib.epic7_ver2.戰鬥開始dm()
    Call 次元()
    Call Lib.epic7_ver2.CLEARdm()
    Call Lib.epic7_ver2.確認dm()
    Call Lib.epic7_ver2.準備戰鬥dm()
    Call Lib.epic7_ver2.選擇隊伍dm()
Next
Call Lib.epic7_ver2.戰鬥開始dm()
Call 次元()
Call Lib.epic7_ver2.CLEARdm()
Call Lib.epic7_ver2.結束dm()
