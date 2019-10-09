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
MacroID=335f57d3-ed78-4691-bb23-10c8c564093d
Description=阿吉瑪努斯27愛拉奇溫甲殼永恆森林的塵埃
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
Sub 阿吉
    Call Lib.epic7_ver2.GO_E()
    Do
        Call Lib.epic7_ver2.寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 305, 155
            Delay 311
            LeftClick 1
            MoveTo 642, 319
            Delay 1119
            LeftClick 1
            MoveTo 1069, 687
            Delay 704
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_S_CLICK()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_RED_N_CLICK()
    Call Lib.epic7_ver2.GO_RED_N_CLICK()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱dm()
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
    Call Lib.epic7_ver2.戰鬥開始dm()
    Call 阿吉()
    Call Lib.epic7_ver2.CLEARdm()
    Call Lib.epic7_ver2.確認dm()
    Call Lib.epic7_ver2.準備戰鬥dm()
    Call Lib.epic7_ver2.選擇隊伍dm()
Next
Call Lib.epic7_ver2.戰鬥開始dm()
Call 阿吉()
Call Lib.epic7_ver2.CLEARdm()
Call Lib.epic7_ver2.結束dm()
