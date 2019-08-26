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
MacroID=f6844cbd-74bf-4d43-86d6-9aedf99482b1
Description=重甲兵頭盔Loop
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
Sub 重甲兵頭盔()
    Call Lib.epic7_ver2.戰鬥開始dm()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Call Lib.epic7_ver2.GO_RED_N_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱dm()
        IfColor 1661,747,"76D2FF",0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 297, 159
            Delay 383
            LeftClick 1
            MoveTo 917, 797
            Delay 1479
            LeftClick 1
            MoveTo 1072, 686
            Delay 800
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Call Lib.epic7_ver2.GO_RED_N()
    Do
        Call Lib.epic7_ver2.寶箱dm()
        IfColor 1661,747,"76D2FF",0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 364, 156
            Delay 721
            LeftClick 1
            MoveTo 715, 314
            Delay 989
            LeftClick 1
            MoveTo 1088, 669
            Delay 789
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
    Do
        IfColor 1661,747,"76D2FF",0 Then
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
Call 重甲兵頭盔()
For i - 1
    Call Lib.epic7_ver2.CLEARdm()
    Call Lib.epic7_ver2.確認dm()
    Call Lib.epic7_ver2.準備戰鬥dm()
    Call Lib.epic7_ver2.選擇隊伍dm()
    Call 重甲兵頭盔()
Next
Call Lib.epic7_ver2.CLEARdm()
Call Lib.epic7_ver2.結束dm()
