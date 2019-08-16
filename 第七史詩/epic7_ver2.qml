[General]
SyntaxVersion=2
MacroID=44e32598-92e9-45b5-abee-32a4ef80468d
[Comment]

[Script]
//請在下面寫上您的副程式或函數
//寫完保存後，在任一命令庫上點擊右鍵並選擇“刷新”即可
Sub 戰鬥開始()
    Do 
        FindPic 1160,853,1214,930,"D:\按鍵精靈2014\screen\ver2\戰鬥開始.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1399, 896
            Delay 359
            LeftClick 1
            MoveTo 1071, 677
            Delay 1087
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub GO_E()
    Do
        Call 寶箱()
        IfColor 1663, 348, "76D2FF", 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
End Sub
Sub GO_RED_N()
    Do
        Call 寶箱()
        IfColor 255,346,"76D2FF",0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 282, 373
            Delay 388
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_W()
    Do
        Call 寶箱()
        IfColor 254, 746, "76D2FF", 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 288, 711
            Delay 464
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_S()
    Do
        Call 寶箱()
        IfColor 1661,747,"76D2FF",0 Then
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 718
            Delay 492
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_E_CLICK()
    Do
        Call 寶箱()
        IfColor 1663, 348, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 378
            Delay 444
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop 
End Sub
Sub GO_RED_N_CLICK()
    Do
        Call 寶箱()
        IfColor 255, 346, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 282, 373
            Delay 388
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_W_CLICK()
    Do
        Call 寶箱()
        IfColor 254, 746, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 288, 711
            Delay 464
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub GO_S_CLICK()
    Do
        Call 寶箱()
        IfColor 1661, 747, "76D2FF", 0 Then
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 718
            Delay 492
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
            Exit Do
        End If
    Loop
End Sub
Sub CLEAR()
    Do
        Call 寶箱()
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
        Call Lib.epic7_ver2.戰鬥開始()
    End If
End Sub
Sub 確認()
    Do
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"3C4A30","26|1|FAFAFA,17|10|FFFFFF",1)
        dim MyArray
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            MoveTo 1665, 915
            Delay 1000
            LeftClick 1
            //緊急任務
            MoveTo 829, 727
            Delay 1000
            LeftClick 1
            MoveTo 1638, 913
            Delay 2000
            LeftClick 1
        End If
    Loop Until X > 0 And Y > 0
End Sub
Sub 選擇隊伍()
    Do
    FindPic 1285,867,1420,922,"D:\按鍵精靈2014\screen\ver2\選擇隊伍.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1352, 888
            Delay 1000
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub 寶箱()
    Rem again
    FindPic 151, 468, 1764, 664, "D:\按鍵精靈2014\screen\epic7_4-4\寶箱.bmp", 0.4, BoxX, BoxY    
    If BoxX > 0 And BoxY > 0 Then 
        MoveTo BoxX + 65, BoxY + 43
        LeftClick 1
        Goto again
    End If
End Sub
    