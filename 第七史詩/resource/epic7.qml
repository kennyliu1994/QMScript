[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//�Цb�U���g�W�z���Ƶ{���Ψ��
//�g���O�s��A�b���@�R�O�w�W�I���k��ÿ�ܡ���s���Y�i
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
Sub �԰��}�l()
    Do
        dm.FindStr 1587, 926, 1738, 981, "�԰��}�l", "fdf9f0-303030|bdc4b8-303030", 0.75, intX, intY        
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
    Call �I�]�Ŷ�����()
    //    Call �԰��O�����T�{dm()
End Sub
//Sub �԰��O�����T�{dm()
//    Delay 1000
//    dm.FindStr 1061,652,1132,696, "�T�{","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY
//    If intX > 0 And intY > 0 Then 
//        MoveTo 1094, 672
//        Delay 1000
//        LeftClick 1
//    End If
//End Sub
Sub �I�]�Ŷ�����()
    Delay 1000
    dm.FindStr 821, 328, 1001, 386, "�I�]�Ŷ�", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        id = dm.Play("sound\�I�]���F.mp3")
        dm.Stop id
        ExitScript
    End If
End Sub
Sub ��ʤO����()
    Delay 1000
    dm.FindStr 843, 229, 1074, 292, "��ʤO����", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo 1073, 719
        Delay 1000
        LeftClick 1
        Call �԰��}�l()
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
    dm.FindStr 1638, 929, 1776, 980, "���s�i��", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
        //        Call ��ܶ���()
        Call �԰��}�l()
    End If    
End Sub
Sub �T�{()
    Do
        dm.FindStr 1631, 929, 1712, 981, "�T�{", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1500
            LeftClick 1
            Exit Do
        End If
    Loop
    //    Call ��U�B��()
    //    Call �˱K��()
    //    Call ������()
    //    Call ���s�i��()
End Sub
Sub ��U�B��()
    dm.FindStr 796, 249, 981, 310, "������U", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo 817, 724
        Delay 1000
        LeftClick 1
        Call �T�{()
    End If
End Sub
Sub �˱K��()
    dm.FindStr 916, 248, 1142, 308, "�^���˱K��", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY    
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
        Call �T�{()
    End If
End Sub
Sub ������()
    dm.FindStr 861, 268, 1054, 331, "������", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo 824,731
        Delay 1000
        LeftClick 1
        //        Call �T�{()
    End If
End Sub
Sub ���s�i��()
    Do
        Call ��U�B��()
        Call �˱K��()
        Call ������()
        dm.FindStr 1641, 930, 1777, 983, "���s�i��", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
//Sub �A�Ӥ@��dm()
//    Delay 1000
//    dm.FindStr 1610,894,1731,935, "�A�Ӥ@��","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY
//    If intX > 0 And intY > 0 Then 
//        MoveTo intX, intY
//        Delay 1000
//        LeftClick 1
//    End If
//End Sub
Sub �ǳƾ԰�()
    Do
        dm.FindStr 1446, 932, 1577, 981, "�ǳƾ԰�", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
        //        Call ��U�B��()
        //        Call �˱K��()
        //        Call ������()
    Loop
End Sub
Sub ��ܶ���()
    Do
        dm.FindStr 1500, 932, 1661, 992, "��ܶ���", "fdf9f0-303030|bdc4b8-303030", 0.7, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub �_�c()
    dm.FindPic 76, 506, 1844, 684, "picture\epic7\treasure.bmp", "000000", 0.8, 0, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX+71, intY+61
        LeftClick 1
    End If
End Sub
Sub �ǰe��()
    '==========�H�U�O������F���s�����e==========
    MoveTo 967, 559
    Delay 477
    LeftClick 1
    MoveTo 1095, 672
    Delay 1142
    LeftClick 1
    '==========�H�W�O������F���s�����e==========
    Delay 2000
End Sub
Sub ���y�˳�()
    //Call Plugin.RegDll.Reg("d:\�j�z���\dm.dll")
    Set dm = createobject("dm.dmsoft")
    TracePrint dm.ver()
    dm.SetPath "d:\�j�z���"
    dm_ret = dm.SetDict(0, "�D�ݤ���.txt")
    dm_ret = dm.Ocr(699,481,829,522, "0.0.30-0.0.5|0.0.40-0.0.5|0.0.50-0.0.5|0.0.60-0.0.5|0.0.70-0.0.5|0.0.80-0.0.5|0.0.90-0.0.5|0.0.20-0.0.5|0.0.10-0.0.5,|", 1)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "���ݤ���.txt")
    dm_ret = dm.Ocr(668,565,776,685, "0.0.51-0.0.35,|", 0.8)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "�D�ݼƦr.txt")
    dm_ret = dm.Ocr(921,482,1012,522, "0.0.30-0.0.5|0.0.40-0.0.5|0.0.50-0.0.5|0.0.60-0.0.5|0.0.70-0.0.5|0.0.80-0.0.5|0.0.20-0.0.5|0.0.10-0.0.5,|", 1)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "���ݼƦr.txt")
    dm_ret = dm.Ocr(902, 564, 1007, 681, "0.0.22-5.5.5|0.0.24-5.5.5|0.0.26-5.5.5|0.0.28-5.5.5|0.0.30-5.5.5|0.0.32-5.5.5|0.0.34-5.5.5|0.0.36-5.5.5|0.0.38-5.5.5|0.0.40-5.5.5,|", 0.85)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt",vbcrlf
    dm_ret = dm.UnBindWindow()
End Sub
Sub ����()
    id = dm.Play("sound\�����F��.mp3")
    dm.Stop id
    ExitScript
End Sub
Sub �b�O�p����()    
    MoveTo 288, 971
    Delay 1000
    LeftClick 1
    MoveTo 1105, 696
    Delay 1000
    LeftClick 1
    Do
        dm.FindStr 157, 59, 247, 114, "��^", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1289,734
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindStr 1094, 366, 1277, 421, "�w���U�}", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
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
        dm.FindStr 820, 232, 912, 282, "�S��", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindStr 157, 59, 247, 114, "��^", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1289,734
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindStr 1096, 563, 1279, 619, "�ˤߦ^��", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
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
        dm.FindStr 820, 232, 912, 282, "�S��", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
End Sub