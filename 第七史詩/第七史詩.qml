[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//�Цb�U���g�W�z���Ƶ{���Ψ��
//�g���O�s��A�b���@�R�O�w�W�I���k��ÿ�ܡ���s���Y�i
Sub �԰�()
    Do 
        FindPic 1361,865,1488,914,"D:\������F2014\screen\epic7_4-4\�԰��}�l.bmp",0.3,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========�H�U�O������F���s�����e==========
            MoveTo 1399, 896
            Delay 359
            LeftDown 1
            Delay 12
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1071, 677
            Delay 1087
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_E()
    Do
        Call �_�c()
        FindPic 1506,281,1747,469,"D:\������F2014\screen\epic7_4-4\E.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 378
            Delay 444
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_RED_N()
    Do
        Call �_�c()
        FindPic 149,275,379,459,"D:\������F2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========�H�U�O������F���s�����e==========
            MoveTo 282, 373
            Delay 388
            LeftDown 1
            Delay 3
            LeftDown 1
            MoveTo 282, 374
            Delay 126
            LeftUp 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_W()
    Do
        Call �_�c()
        FindPic 164,631,394,811,"D:\������F2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========�H�U�O������F���s�����e==========
            MoveTo 288, 711
            Delay 464
            LeftDown 1
            Delay 17
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_S()
    Do
        Call �_�c()
        FindPic 1448,581,1800,862,"D:\������F2014\screen\epic7_4-4\S.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 718
            Delay 492
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_E_CLICK()
    Do
        Call �_�c()
        FindPic 1506,281,1747,469,"D:\������F2014\screen\epic7_4-4\E.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 378
            Delay 444
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_RED_N_CLICK()
    Do
        Call �_�c()
        FindPic 149,275,379,459,"D:\������F2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 282, 373
            Delay 388
            LeftDown 1
            Delay 3
            LeftDown 1
            MoveTo 282, 374
            Delay 126
            LeftUp 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_W_CLICK()
    Do
        Call �_�c()
        FindPic 164,631,394,811,"D:\������F2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 288, 711
            Delay 464
            LeftDown 1
            Delay 17
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_S_CLICK()
    Do
        Call �_�c()
        FindPic 1448,581,1800,862,"D:\������F2014\screen\epic7_4-4\S.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========�H�U�O������F���s�����e==========
            MoveTo 1632, 718
            Delay 492
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========�H�W�O������F���s�����e==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub CLEAR()
    Do
        Call �_�c()
        FindPic 911,238,1001,356,"D:\������F2014\screen\epic7_4-4\CLEAR.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1665, 915
            Delay 1000
            LeftClick 1
            MoveTo 861, 694
            Delay 3000
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub �T�{()
    Do
        FindPic 1599,891,1672,938,"D:\������F2014\screen\epic7_4-4\�T�{.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1638, 913
            Delay 1000
            LeftClick 1
            MoveTo 829, 727
            Delay 1000
            LeftClick 1
            MoveTo 1638, 913
            Delay 2000
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub ��ܶ���()
    Do
        FindPic 1289,864,1417,912,"D:\������F2014\screen\epic7_4-4\��ܶ���.bmp",0.3,intX,intY
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
    