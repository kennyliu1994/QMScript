[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//請在下面寫上您的副程式或函數
//寫完保存後，在任一命令庫上點擊右鍵並選擇“刷新”即可
Sub GO_E()
    Do
        Call 寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub GO_RED_N()
    Do
        Call 寶箱dm()
        dm_ret = dm.CmpColor(255,346, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 282, 373
            Delay 388
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub GO_W()
    Do
        Call 寶箱dm()
        dm_ret = dm.CmpColor(254, 746, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 288, 711
            Delay 464
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub GO_S()
    Do
        Call 寶箱dm()
        dm_ret = dm.CmpColor(1661,747, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 1632, 718
            Delay 492
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub GO_E_CLICK()
    Do
        Call 寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub GO_RED_N_CLICK()
    Do
        Call 寶箱dm()
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
End Sub
Sub GO_W_CLICK()
    Do
        Call 寶箱dm()
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
End Sub
Sub GO_S_CLICK()
    Do
        Call 寶箱dm()
        dm_ret = dm.CmpColor(1661,747, "ffd276", 1.0)
        If dm_ret = 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            MoveTo 1632, 718
            Delay 444
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub 戰鬥開始dm()
    Do
        dm_ret = dm.FindStr(1565,879,1705,940, "戰鬥開始","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
    Call 戰鬥力不足確認dm()
    Call 背包空間不足dm()
End Sub
Sub 戰鬥力不足確認dm()
    Delay 1000
    dm_ret = dm.FindStr(1061,652,1132,696, "確認","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1094, 672
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub 背包空間不足dm()
    Delay 1000
    dm_ret = dm.FindStr(827, 318, 1082, 374, "背包空間不足", "fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        id = dm.Play("sound\背包滿了.mp3")
        dm.Stop id
        EndScript
    End If
End Sub
Sub 行動力不足dm()
    Delay 1000
    dm_ret = dm.FindStr(850,226,1066,279, "行動力不足","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1073,719
        Delay 1000
        LeftClick 1
        Call 戰鬥開始dm()
    End If
End Sub
Sub CLEARdm()
    Do
        Call 寶箱dm()
        Call FAILEDdm()
        dm_ret = dm.FindStr(914,241,994,349, "E","ffff9c-101010", 1.0,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1330, 678
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub FAILEDdm()
    dm_ret = dm.FindStr(1610,894,1731,935, "重新進行","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1669, 918
        Delay 1000
        LeftClick 1
        Call 選擇隊伍dm()
        Call 戰鬥開始dm()
    End If    
End Sub
Sub 確認dm()
    Do
        dm_ret = dm.FindStr(1601,894,1668,934, "確認","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 2000
            dm.LeftClick
            Exit Do
        End If
    Loop
    Call 協助朋友dm()
    Call 親密度dm()
    Call 緊急任務dm()
    Call 重新進行dm()
End Sub
Sub 協助朋友dm()
    Delay 1000
    dm_ret = dm.FindStr(886,242,1117,307, "協助的朋友","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 817, 724
        Delay 1000
        LeftClick 1
        Call 確認dm()
    End If
End Sub
Sub 親密度dm()
    Delay 1000
    dm_ret = dm.FindStr(917,243,1137,303, "英雄親密度","fcf7f0-303030|bec2b8-303030", 1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1112, 751
        Delay 1000
        LeftClick 1
        Call 確認dm()
    End If
End Sub
Sub 緊急任務dm()
    Delay 1000
    dm_ret = dm.FindStr(868,261,1049,321, "緊急任務","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 824,731
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub 再來一次dm()
    Delay 1000
    dm_ret = dm.FindStr(1610,894,1731,935, "再來一次","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub 重新進行dm()
    Delay 1000
    dm_ret = dm.FindStr(1604,889,1736,942, "重新進行","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub 準備戰鬥dm()
    Do
        dm_ret = dm.FindStr(1423,896,1545,939, "準備戰鬥","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1481, 917
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub 選擇隊伍dm()
    Do
        dm_ret = dm.FindStr(1477,889,1606,935, "選擇隊伍","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 2000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub 寶箱dm()
    dm.FindPic 119,489,1800,652, "picture\treasure.bmp", "000000", 0.7, 0, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX+71, intY+61
        LeftClick 1
    End If
End Sub
Sub 傳送門()
    '==========以下是按鍵精靈錄製的內容==========
    MoveTo 967, 559
    Delay 477
    LeftClick 1
    MoveTo 1095, 672
    Delay 1142
    LeftClick 1
    '==========以上是按鍵精靈錄製的內容==========
    Delay 2000
End Sub
Sub 掃描裝備()
    //Call Plugin.RegDll.Reg("d:\大漠找圖\dm.dll")
    Set dm = createobject("dm.dmsoft")
    TracePrint dm.ver()
    dm.SetPath "d:\大漠找圖"
    dm_ret = dm.SetDict(0, "主屬中文.txt")
    dm_ret = dm.Ocr(699,481,829,522, "0.0.30-0.0.5|0.0.40-0.0.5|0.0.50-0.0.5|0.0.60-0.0.5|0.0.70-0.0.5|0.0.80-0.0.5|0.0.90-0.0.5|0.0.20-0.0.5|0.0.10-0.0.5,|", 1)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "副屬中文.txt")
    dm_ret = dm.Ocr(668,565,776,685, "0.0.51-0.0.35,|", 0.8)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "主屬數字.txt")
    dm_ret = dm.Ocr(921,482,1012,522, "0.0.30-0.0.5|0.0.40-0.0.5|0.0.50-0.0.5|0.0.60-0.0.5|0.0.70-0.0.5|0.0.80-0.0.5|0.0.20-0.0.5|0.0.10-0.0.5,|", 1)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "副屬數字.txt")
    dm_ret = dm.Ocr(902, 564, 1007, 681, "0.0.22-5.5.5|0.0.24-5.5.5|0.0.26-5.5.5|0.0.28-5.5.5|0.0.30-5.5.5|0.0.32-5.5.5|0.0.34-5.5.5|0.0.36-5.5.5|0.0.38-5.5.5|0.0.40-5.5.5,|", 0.85)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt",vbcrlf
    dm_ret = dm.UnBindWindow()
End Sub
Sub 結束dm()
    id = dm.Play("sound\打完了唷.mp3")
    dm.Stop id
    EndScript
End Sub
Sub 帳篷dm()
    id = dm.Play("sound\帳篷.mp3")
    dm.Stop id
End Sub
Sub 關技能dm()
    id = dm.Play("sound\關技能.mp3")
    dm.Stop id
End Sub