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
Description=信徒39鋒利的矛刃
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
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 231, 141
            Delay 334
            LeftClick 1
            MoveTo 813, 842
            Delay 1493
            LeftClick 1
            MoveTo 1087, 716
            Delay 855
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop    
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_E_CLICK()
    Call Lib.epic7.GO_S_CLICK()    
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
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
    Call 信徒()
    Call Lib.epic7.CLEAR()
    Call Lib.epic7.確認()
    Call Lib.epic7.準備戰鬥()
    Call Lib.epic7.選擇隊伍()
Next
Call Lib.epic7.結束()
