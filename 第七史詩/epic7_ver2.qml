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
            MoveTo 1665, 915
            Delay 1000
            LeftClick 1
            MoveTo 861, 694
            Delay 3000
            LeftClick 1
            Exit Do
        End If
    Loop 
End Sub
Sub FAILED()
    IfColor 941, 414, "C7D4D7", 0 Then
        MoveTo 1665, 915
        Delay 1000
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
            //������
            MoveTo 829, 727
            Delay 1000
            LeftClick 1
            MoveTo 1638, 913
            Delay 2000
            LeftClick 1
        End If
    Loop Until X > 0 And Y > 0
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
Sub �_�c()
    Rem again
    FindPic 151, 468, 1764, 664, "D:\������F2014\screen\epic7_4-4\�_�c.bmp", 0.4, BoxX, BoxY    
    If BoxX > 0 And BoxY > 0 Then 
        MoveTo BoxX + 65, BoxY + 43
        LeftClick 1
        Goto again
    End If
End Sub
    