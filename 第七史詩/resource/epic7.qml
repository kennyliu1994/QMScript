[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//請在下面寫上您的副程式或函數
//寫完保存後，在任一命令庫上點擊右鍵並選擇“刷新”即可
Sub GO_E()
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
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
        dm_ret = dm.CmpColor(241, 352, "ffc161", 1.0)
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
        dm_ret = dm.CmpColor(234, 783, "ffca6a", 1.0)
        If dm_ret = 0 Then
            MoveTo 211, 761
            Delay 400
            LeftClick 1
            Exit Do
        End If
    Loop
    Delay 1300
End Sub
Sub GO_S()
    Do
        dm_ret = dm.CmpColor(1682, 783, "ffc667", 1.0)
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
Sub 戰鬥開始()
    Do
        dm.FindStr 1587, 926, 1738, 981, "戰鬥開始", "fdf9f0-303030|bdc4b8-303030", 0.75, intX, intY        
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
    Call 背包空間不足()
    //    Call 戰鬥力不足確認dm()
End Sub
//Sub 戰鬥力不足確認dm()
//    Delay 1000
//    dm.FindStr 1061,652,1132,696, "確認","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY
//    If intX > 0 And intY > 0 Then 
//        MoveTo 1094, 672
//        Delay 1000
//        LeftClick 1
//    End If
//End Sub
Sub 背包空間不足()
    Delay 1000
    dm.FindStr 821, 328, 1001, 386, "背包空間", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        id = dm.Play("sound\背包滿了.mp3")
        dm.Stop id
        ExitScript
    End If
End Sub
Sub 行動力不足()
    Delay 1000
    dm.FindStr 843, 229, 1074, 292, "行動力不足", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo 1073, 719
        Delay 1000
        LeftClick 1
        Call 戰鬥開始()
    End If
End Sub
Sub CLEAR()
    Do
        Call FAILED()
        dm.FindPic 908, 243, 1005, 366, "picture\epic7\CLEAR.bmp", "000000", 0.8, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub FAILED()
    dm.FindStr 1638, 929, 1776, 980, "重新進行", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
        //        Call 選擇隊伍()
        Call 戰鬥開始()
    End If    
End Sub
Sub 確認()
    Do
        dm.FindStr 1631, 929, 1712, 981, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1500
            LeftClick 1
            Exit Do
        End If
    Loop
    //    Call 協助朋友()
    //    Call 親密度()
    //    Call 緊急任務()
    //    Call 重新進行()
End Sub
Sub 協助朋友()
    dm.FindStr 796, 249, 981, 310, "給予協助", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo 817, 724
        Delay 1000
        LeftClick 1
        Call 確認()
    End If
End Sub
Sub 親密度()
    dm.FindStr 916, 248, 1142, 308, "英雄親密度", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY    
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
        Call 確認()
    End If
End Sub
Sub 緊急任務()
    dm.FindStr 861, 268, 1054, 331, "緊急任務", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo 824,731
        Delay 1000
        LeftClick 1
        //        Call 確認()
    End If
End Sub
Sub 重新進行()
    Do
        Call 協助朋友()
        Call 親密度()
        Call 緊急任務()
        dm.FindStr 1641, 930, 1777, 983, "重新進行", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
//Sub 再來一次dm()
//    Delay 1000
//    dm.FindStr 1610,894,1731,935, "再來一次","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY
//    If intX > 0 And intY > 0 Then 
//        MoveTo intX, intY
//        Delay 1000
//        LeftClick 1
//    End If
//End Sub
Sub 準備戰鬥()
    Do
        dm.FindStr 1446, 932, 1577, 981, "準備戰鬥", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
        //        Call 協助朋友()
        //        Call 親密度()
        //        Call 緊急任務()
    Loop
End Sub
Sub 選擇隊伍()
    Do
        dm.FindStr 1500, 932, 1661, 992, "選擇隊伍", "fdf9f0-303030|bdc4b8-303030", 0.7, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub 寶箱()
    dm.FindPic 76, 506, 1844, 684, "picture\epic7\treasure.bmp", "000000", 0.8, 0, intX, intY
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
Sub 結束()
    id = dm.Play("sound\打完了唷.mp3")
    dm.Stop id
    ExitScript
End Sub
Sub 帳篷小水奶()    
    MoveTo 288, 971
    Delay 1000
    LeftClick 1
    MoveTo 1105, 696
    Delay 1000
    LeftClick 1
    Do
        dm.FindStr 157, 59, 247, 114, "返回", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1289,734
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindStr 1094, 366, 1277, 421, "安慰助陣", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        Delay 1000
        LeftClick 1
        dm.FindStr 820, 232, 912, 282, "露營", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindStr 157, 59, 247, 114, "返回", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1289,734
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindStr 1096, 563, 1279, 619, "傷心回憶", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        Delay 1000
        LeftClick 1
        dm.FindStr 820, 232, 912, 282, "露營", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
End Sub