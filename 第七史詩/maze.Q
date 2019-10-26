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
MacroID=1dfdfde6-9040-46df-bfb9-d867bc1a507d
Description=迷宮
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
Sub 普通1右下左上
    Call Lib.epic7.戰鬥開始dm()
    Delay 5000
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.帳篷LL光鐮()
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_S()
    Do
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 272, 173
            Delay 311
            LeftClick 1
            MoveTo 307, 468
            Delay 1588
            LeftDown 1
            MoveTo 722, 500
            Delay 621
            LeftUp 1
            MoveTo 330, 641
            Delay 823
            LeftClick 1
            MoveTo 1062, 683
            Delay 877
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()    
    Do
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.結束dm()
            Exit Do
        End If
    Loop    
End Sub
Sub 普通迷宮2右上左下
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Do
        dm_ret = dm.CmpColor(1661,747, "ffd276", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.帳篷LL光鐮()
            Exit Do
        End If
    Loop
    Do
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 328, 158
            Delay 310
            LeftClick 1
            MoveTo 492, 743
            Delay 1317
            LeftDown 1
            MoveTo 1062, 325
            Delay 1053
            LeftUp 1
            MoveTo 680, 875
            Delay 847
            LeftClick 1
            MoveTo 1032, 669
            Delay 959
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.結束dm()
            Exit Do
        End If
    Loop   
End Sub
Sub 普通迷宮3女王左上
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.帳篷LL光鐮()
            Exit Do
        End If
    Loop
    MessageBox "傳回中央"
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.結束dm()
End Sub
Sub 地獄迷宮左上
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    MessageBox "帳篷"
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.關技能dm()
    Call Lib.epic7.GO_RED_N()
    MessageBox "BOSS"
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.結束dm()
End Sub
Sub 地獄迷宮右上
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    MessageBox "帳篷"
    MessageBox "手動打小王"
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.關技能dm()
    Call Lib.epic7.結束dm()
End Sub
Sub 尼克斯特的聖所
    Call Lib.epic7.GO_RED_N_CLICK()
    Do
        Call Lib.epic7.寶箱dm()
        IfColor 1661,747,"76D2FF",0 Then
            Call Lib.epic7.傳送門()
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W_CLICK()
    Call Lib.epic7.GO_RED_N()
    Do
        Call Lib.epic7.寶箱dm()
        IfColor 1663, 348, "76D2FF", 0 Then
            MessageBox "帳篷"
            MessageBox "商人"
            Delay 2000
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_E()
    Do
        Call Lib.epic7.寶箱dm()
        IfColor 254, 746, "76D2FF", 0 Then
            Call Lib.epic7.傳送門()
            Exit Do
        End If
    Loop 
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    MessageBox "手動"
    Call Lib.epic7.結束dm()
End Sub
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "normal.txt")
i = inputbox("1 普通迷宮1右下左上" & vbcr & "2 普通迷宮2右上左下" & vbcr & "3 普通迷宮3女王左上" & vbcr & "4 地獄迷宮左上" & vbcr & "5 地獄迷宮右上"& vbcr & "6 尼克斯特的聖所", "提示")
If i = 1 Then Call 普通1右下左上()
If i = 2 Then Call 普通迷宮2右上左下()
If i = 3 Then Call 普通迷宮3女王左上()
If i = 4 Then Call 地獄迷宮左上()
If i = 5 Then Call 地獄迷宮右上()
If i = 6 Then Call 尼克斯特的聖所()
