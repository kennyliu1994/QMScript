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
MacroID=93bd5695-7fa3-493c-90f3-bfbe51cb4913
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
    Call Lib.epic7.戰鬥開始()
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then 
            Delay 3000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_S()
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then 
            Call Lib.epic7.帳篷小水奶()
            Exit Do
        End If
    Loop
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 250, 182
            Delay 461
            LeftClick 1
            MoveTo 336, 425
            Delay 1398
            LeftDown 1
            MoveTo 940, 457
            Delay 700
            LeftUp 1
            MoveTo 439, 660
            Delay 673
            LeftClick 1
            MoveTo 1085, 705
            Delay 1078
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
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 266, 163
            Delay 370
            LeftClick 1
            MoveTo 950, 175
            Delay 1686
            LeftDown 1
            MoveTo 534, 518
            Delay 598
            LeftUp 1
            MoveTo 913, 216
            Delay 663
            LeftClick 1
            MoveTo 1118, 702
            Delay 887
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Call Lib.epic7.結束()
            Exit Do
        End If
    Loop    
End Sub
Sub 普通迷宮2右上左下
    Call Lib.epic7.戰鬥開始()
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then 
            Delay 3000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    MessageBox "手動打王&auto"
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then 
            Call Lib.epic7.帳篷小水奶()
            Exit Do
        End If
    Loop
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 250, 182
            Delay 310
            LeftClick 1
            MoveTo 492, 743
            Delay 1317
            LeftDown 1
            MoveTo 1062, 325
            Delay 1053
            LeftUp 1
            MoveTo 646, 928
            Delay 847
            LeftClick 1
            MoveTo 1099, 702
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
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.結束()
            Exit Do
        End If
    Loop   
End Sub
Sub 普通迷宮3女王左上
    Call Lib.epic7.戰鬥開始()
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then 
            Delay 3000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.帳篷小水奶()
            Exit Do
        End If
    Loop
    MessageBox "BOSS"
    Do
        dm_ret = dm.CmpColor(1682, 783, "ffc667", 1.0)
        If dm_ret = 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 277, 165
            Delay 422
            LeftClick 1
            MoveTo 948, 808
            Delay 2205
            LeftDown 1
            MoveTo 575, 454
            Delay 750
            LeftUp 1
            MoveTo 869, 673
            Delay 958
            LeftClick 1
            MoveTo 1108, 693
            Delay 870
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_W()
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 249, 165
            Delay 423
            LeftClick 1
            MoveTo 1251, 579
            Delay 1847
            LeftDown 1
            MoveTo 555, 586
            Delay 821
            LeftUp 1
            MoveTo 874, 348
            Delay 680
            LeftClick 1
            MoveTo 1114, 693
            Delay 1053
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop
    Do
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.結束()
            Exit Do
        End If
    Loop 
End Sub
Sub 地獄迷宮左上
    Call Lib.epic7.戰鬥開始()
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then 
            Delay 3000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_RED_N()
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then 
            Call Lib.epic7.帳篷小水奶()
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    MessageBox "關技能&BOSS"
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Do
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.結束()
            Exit Do
        End If
    Loop  
End Sub
Sub 地獄迷宮右上
    Call Lib.epic7.戰鬥開始()
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then 
            Delay 3000
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.GO_RED_N()
    Do
        dm_ret = dm.CmpColor(1682, 783, "ffc667", 1.0)
        If dm_ret = 0 Then 
            Call Lib.epic7.帳篷小水奶()
            Exit Do
        End If
    Loop
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_W()
    Call Lib.epic7.GO_S()
    Call Lib.epic7.GO_E()
    Call Lib.epic7.GO_RED_N()
    Call Lib.epic7.結束()
End Sub
Sub 尼克斯特的聖所
    Call Lib.epic7.戰鬥開始()
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            MoveTo 282, 373
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(1682, 783, "ffc667", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.傳送門()
            Exit Do
        End If
    Loop
    Delay 1300
    Call Lib.epic7.GO_W()
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            MoveTo 288, 711
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
        If dm_ret = 0 Then
            MoveTo 282, 373
            Delay 388
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.帳篷小水奶()
            MessageBox "商人"
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            Call Lib.epic7.傳送門()
            Exit Do
        End If
    Loop
    Delay 1300
    Call Lib.epic7.GO_E()
    Do
        Call Lib.epic7.寶箱()
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
    Do
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 254, 155
            Delay 364
            LeftClick 1
            MoveTo 506, 673
            Delay 2002
            LeftClick 1
            MoveTo 1087, 681
            Delay 975
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Call Lib.epic7.結束()
            Exit Do
        End If
    Loop
End Sub
Set dm = createobject("dm.dmsoft")
TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
i = inputbox("1 普通迷宮1右下左上" & vbcr & "2 普通迷宮2右上左下" & vbcr & "3 普通迷宮3女王左上" & vbcr & "4 地獄迷宮左上" & vbcr & "5 地獄迷宮右上"& vbcr & "6 尼克斯特的聖所", "提示")
If i = 1 Then Call 普通1右下左上()
If i = 2 Then Call 普通迷宮2右上左下()
If i = 3 Then Call 普通迷宮3女王左上()
If i = 4 Then Call 地獄迷宮左上()
If i = 5 Then Call 地獄迷宮右上()
If i = 6 Then Call 尼克斯特的聖所()
