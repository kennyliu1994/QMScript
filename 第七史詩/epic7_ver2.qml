[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//�Цb�U���g�W�z���Ƶ{���Ψ��
//�g���O�s��A�b���@�R�O�w�W�I���k��ÿ�ܡ���s���Y�i
Sub GO_E()
    Do
        Call �_�cdm()
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
        Call �_�cdm()
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
        Call �_�cdm()
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
        Call �_�cdm()
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
        Call �_�cdm()
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
        Call �_�cdm()
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
        Call �_�cdm()
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
        Call �_�cdm()
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
Sub �԰��}�ldm()
    Do
        dm_ret = dm.FindStr(1565,879,1705,940, "�԰��}�l","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
    Call �԰��O�����T�{dm()
    Call �I�]�Ŷ�����dm()
End Sub
Sub �԰��O�����T�{dm()
    Delay 1000
    dm_ret = dm.FindStr(1061,652,1132,696, "�T�{","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1094, 672
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub �I�]�Ŷ�����dm()
    Delay 1000
    dm_ret = dm.FindStr(827, 318, 1082, 374, "�I�]�Ŷ�����", "fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        id = dm.Play("sound\�I�]���F.mp3")
        dm.Stop id
        EndScript
    End If
End Sub
Sub ��ʤO����dm()
    Delay 1000
    dm_ret = dm.FindStr(850,226,1066,279, "��ʤO����","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1073,719
        Delay 1000
        LeftClick 1
        Call �԰��}�ldm()
    End If
End Sub
Sub CLEARdm()
    Do
        Call �_�cdm()
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
    dm_ret = dm.FindStr(1610,894,1731,935, "���s�i��","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1669, 918
        Delay 1000
        LeftClick 1
        Call ��ܶ���dm()
        Call �԰��}�ldm()
    End If    
End Sub
Sub �T�{dm()
    Do
        dm_ret = dm.FindStr(1601,894,1668,934, "�T�{","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 2000
            dm.LeftClick
            Exit Do
        End If
    Loop
    Call ��U�B��dm()
    Call �˱K��dm()
    Call ������dm()
    Call ���s�i��dm()
End Sub
Sub ��U�B��dm()
    Delay 1000
    dm_ret = dm.FindStr(886,242,1117,307, "��U���B��","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 817, 724
        Delay 1000
        LeftClick 1
        Call �T�{dm()
    End If
End Sub
Sub �˱K��dm()
    Delay 1000
    dm_ret = dm.FindStr(917,243,1137,303, "�^���˱K��","fcf7f0-303030|bec2b8-303030", 1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1112, 751
        Delay 1000
        LeftClick 1
        Call �T�{dm()
    End If
End Sub
Sub ������dm()
    Delay 1000
    dm_ret = dm.FindStr(868,261,1049,321, "������","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 824,731
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub �A�Ӥ@��dm()
    Delay 1000
    dm_ret = dm.FindStr(1610,894,1731,935, "�A�Ӥ@��","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub ���s�i��dm()
    Delay 1000
    dm_ret = dm.FindStr(1604,889,1736,942, "���s�i��","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub �ǳƾ԰�dm()
    Do
        dm_ret = dm.FindStr(1423,896,1545,939, "�ǳƾ԰�","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1481, 917
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub ��ܶ���dm()
    Do
        dm_ret = dm.FindStr(1477,889,1606,935, "��ܶ���","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 2000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub �_�cdm()
    dm.FindPic 119,489,1800,652, "picture\treasure.bmp", "000000", 0.7, 0, intX, intY
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
Sub ����dm()
    id = dm.Play("sound\�����F��.mp3")
    dm.Stop id
    EndScript
End Sub
Sub �b�Odm()
    id = dm.Play("sound\�b�O.mp3")
    dm.Stop id
End Sub
Sub ���ޯ�dm()
    id = dm.Play("sound\���ޯ�.mp3")
    dm.Stop id
End Sub