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
MacroID=7310245f-61fc-47cc-89c0-a41f8083fdf9
Description=機械18步行用動力迴路
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
Sub 機械
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.FindStr(1064,679,1147,726, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_E_CLICK()
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 265, 160
            Delay 313
            LeftClick 1
            MoveTo 205, 434
            Delay 1486
            LeftClick 1
            MoveTo 1090, 704
            Delay 1063
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_S_CLICK()
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 215, 126
            Delay 383
            LeftClick 1
            MoveTo 578, 65
            Delay 1316
            LeftClick 1
            MoveTo 1097, 699
            Delay 839
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop
    Do
        dm_ret = dm.CmpColor(1682, 783, "ffc667", 1.0)
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
For i
    Call Lib.epic7.戰鬥開始()
    Call 機械()
    Call Lib.epic7.CLEAR()
    Call Lib.epic7.確認()
    Call Lib.epic7.準備戰鬥()
    Call Lib.epic7.選擇隊伍()    
Next
Call Lib.epic7.結束()
