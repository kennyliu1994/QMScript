[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//�Цb�U���g�W�z���Ƶ{���Ψ��
//�g���O�s��A�b���@�R�O�w�W�I���k��ÿ�ܡ���s���Y�i
Sub �԰��}�l()
    Do 
        FindPic 1160,853,1214,930,"D:\������F2014\screen\ver2\�԰��}�l.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========�H�U�O������F���s�����e==========
            MoveTo 1399, 896
            Delay 359
            LeftClick 1
            MoveTo 1071, 677
            Delay 1087
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub �I�]�Ŷ�����dm()
    Delay 1000
    dm_ret = dm.FindStr(820, 271, 1075, 327, "�I�]�Ŷ�����", "fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        id = dm.Play("sound\�I�]���F.mp3")
        dm.Stop id
        ExitScript
    End If
End Sub
Sub �԰��O�����T�{dm()
    Delay 1000
    dm_ret = dm.FindStr(1054,605,1125,649, "�T�{","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1094, 672
        Delay 1000
        LeftClick 1
    End If
End Sub
Sub �԰��}�ldm()
    Do
        dm_ret = dm.FindStr(1348,818,1479,867, "�԰��}�l","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1399, 896
            Delay 1000
            LeftClick 1
            Call �I�]�Ŷ�����dm()
            Call �԰��O�����T�{dm()
            Exit Do
        End If
    Loop
End Sub
Sub GO_E()
    Do
        Call �_�c()
        IfColor 1663, 348, "76D2FF", 0 Then
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop 
End Sub
Sub GO_RED_N()
    Do
        Call �_�c()
        IfColor 255,346,"76D2FF",0 Then
            '==========�H�U�O������F���s�����e==========
            MoveTo 282, 373
            Delay 388
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_W()
    Do
        Call �_�c()
        IfColor 254, 746, "76D2FF", 0 Then
            '==========�H�U�O������F���s�����e==========
            MoveTo 288, 711
            Delay 464
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_S()
    Do
        Call �_�c()
        IfColor 1661,747,"76D2FF",0 Then
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 718
            Delay 492
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_E_CLICK()
    Do
        Call �_�c()
        IfColor 1663, 348, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop 
End Sub
Sub GO_RED_N_CLICK()
    Do
        Call �_�c()
        IfColor 255, 346, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 282, 373
            Delay 388
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_W_CLICK()
    Do
        Call �_�c()
        IfColor 254, 746, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 288, 711
            Delay 464
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_S_CLICK()
    Do
        Call �_�c()
        IfColor 1661, 747, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 718
            Delay 492
            LeftClick 1
            '==========�H�W�O������F���s�����e==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub CLEAR()
    Do
        Call �_�c()
        Call Lib.epic7_ver2.FAILED()
        IfColor 931,294,"9CFFFF",0 Then
            MoveTo 1640, 840
            Delay 2000
            LeftClick 1
            MoveTo 861, 694
            Delay 3000
            LeftClick 1
            Exit Do
        End If
    Loop 
End Sub
Sub CLEARdm()
    Do
        Call �_�c()
        dm_ret = dm.FindStr(907,194,987,302, "E","ffff9c-101010", 1.0,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1330, 678
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub FAILED()
    IfColor 941, 414, "C7D4D7", 0 Then
        MoveTo 1665, 915
        Delay 2000
        LeftClick 1
        Call Lib.epic7_ver2.�԰��}�l()
    End If
End Sub
Sub �T�{()
    Do
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"3C4A30","26|1|FAFAFA,17|10|FFFFFF",1)
        dim MyArray
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            MoveTo 1665, 915
            Delay 1000
            LeftClick 1 
            Call Lib.epic7_ver2.�˱K�פW��() 
            //������
            MoveTo 829, 727
            Delay 1000
            LeftClick 1
            MoveTo 1638, 913
            Delay 2000
            LeftClick 1  
            Exit Do
        End If
    Loop
End Sub
Sub �T�{dm()
    Do
        dm_ret = dm.FindStr(1594,847,1661,887, "�T�{","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1634, 912
            Delay 1000
            LeftClick 1
            Call �˱K��dm()
            //������
            Exit Do
        End If
    Loop
End Sub
Sub �˱K�פW��()
    Delay 2000
    XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"CCCCCC","37|18|898989,93|1|DBDBDB",1)
    dim MyArray
    MyArray = Split(XY, "|")
    X = CInt(MyArray(0)): Y = CInt(MyArray(1))
    If X > 0 And Y > 0 Then 
        MoveTo 1118, 750
        Delay 2000
        LeftClick 1
        Call Lib.epic7_ver2.�T�{()
    End If
End Sub
Sub �˱K��dm()
    Delay 1000
    dm_ret = dm.FindStr(910,196,1130,256, "�^���˱K��","fcf7f0-303030|bec2b8-303030", 1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1112, 751
        Delay 1000
        LeftClick 1
        Call �T�{dm()
    End If
End Sub
Sub ��ܶ���()
    Do
        FindPic 1285,867,1420,922,"D:\������F2014\screen\ver2\��ܶ���.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1352, 888
            Delay 1000
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub ��ܶ���dm()
    Do
        dm_ret = dm.FindStr(1277,820,1416,871, "��ܶ���","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1352, 888
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub �ǳƾ԰�dm()
    Do
        dm_ret = dm.FindStr(1416,849,1538,892, "�ǳƾ԰�","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1481, 917
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
End Sub
Sub �_�c()
    Rem again
    FindPic 151, 468, 1764, 664, "D:\������F2014\screen\epic7_4-4\�_�c.bmp", 0.4, BoxX, BoxY    
    If BoxX > 0 And BoxY > 0 Then 
        MoveTo BoxX + 65, BoxY + 43
        LeftClick 1
        Goto again
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
    hwnd = dm.GetMousePointWindow()
    dm_ret = dm.BindWindow(hwnd, "normal", "normal", "normal", 0)
    dm_ret = dm.SetDict(0, "�D�ݤ���.txt")
    dm_ret = dm.Ocr(692,434,822,475, "0.0.30-0.0.5|0.0.40-0.0.5|0.0.50-0.0.5|0.0.60-0.0.5|0.0.70-0.0.5|0.0.80-0.0.5|0.0.90-0.0.5|0.0.20-0.0.5|0.0.10-0.0.5,|", 1)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "���ݤ���.txt")
    dm_ret = dm.Ocr(661,518,769,638, "0.0.51-0.0.35,|", 0.8)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "�D�ݼƦr.txt")
    dm_ret = dm.Ocr(914,435,1005,475, "0.0.30-0.0.5|0.0.40-0.0.5|0.0.50-0.0.5|0.0.60-0.0.5|0.0.70-0.0.5|0.0.80-0.0.5|0.0.20-0.0.5|0.0.10-0.0.5,|", 1)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt","|"
    dm_ret = dm.SetDict(0, "���ݼƦr.txt")
    dm_ret = dm.Ocr(895, 517, 1000, 634, "0.0.22-5.5.5|0.0.24-5.5.5|0.0.26-5.5.5|0.0.28-5.5.5|0.0.30-5.5.5|0.0.32-5.5.5|0.0.34-5.5.5|0.0.36-5.5.5|0.0.38-5.5.5|0.0.40-5.5.5,|", 0.85)
    dm.WriteFile "output.txt",dm_ret
    dm.WriteFile "output.txt",vbcrlf
    dm_ret = dm.UnBindWindow()
End Sub