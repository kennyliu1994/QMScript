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
MacroID=798bf2e3-008a-4a07-8f39-f3b3846baf90
Description=鈴鐺鼠部落29迴圈
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
Sub GO_E()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 1506,281,1747,469,"D:\按鍵精靈2014\screen\epic7_4-4\E2.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 1632, 378
            Delay 444
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
End Sub
Sub 鈴鐺鼠部落()
    Call Lib.第七史詩.戰鬥()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 237, 146
            Delay 374
            LeftDown 1
            Delay 15
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 463, 492
            Delay 1150
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1102, 665
            Delay 791
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
    Call GO_E()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_S()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 266, 165
            Delay 281
            LeftClick 1
            MoveTo 600, 585
            Delay 993
            LeftDown 1
            Delay 1
            LeftDown 1
            MoveTo 600, 586
            Delay 125
            LeftUp 1
            Delay 1
            LeftUp 1
            MoveTo 1029, 682
            Delay 655
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_RED_N()
    Call GO_E()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 264, 159
            LeftClick 1
            MoveTo 717, 685
            Delay 1215
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 1079, 708
            Delay 956
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            Delay 3000
            MoveTo 965, 582
            LeftClick 1
            Delay 1000
            MoveTo 1095, 676
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
End Sub
i = inputbox("迴圈幾次", "提示")
Call 鈴鐺鼠部落()
For i - 1
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.第七史詩.選擇隊伍()
    Call 鈴鐺鼠部落()
Next
Call Lib.第七史詩.CLEAR()
MessageBox "END"
