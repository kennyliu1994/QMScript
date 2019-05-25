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
MacroID=bef95b7c-e933-46f1-af8f-c9edc99fd1ce
Description=史萊姆23迴圈
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
Sub 史萊姆
    Call Lib.第七史詩.戰鬥()
    Do
        FindPic 120,804,314,996,"D:\按鍵精靈2014\screen\epic7_4-4\藥水.bmp",0.8,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1600, 90
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 285, 151
            Delay 299
            LeftDown 1
            Delay 12
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 571, 162
            Delay 991
            LeftDown 1
            Delay 1
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1122, 667
            Delay 841
            LeftDown 1
            Delay 1
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            MoveTo 1600, 91
            Delay 4000
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_S_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 315, 151
            Delay 325
            LeftDown 1
            Delay 6
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 924, 447
            Delay 1070
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 1086, 683
            Delay 671
            LeftDown 1
            Delay 3
            LeftDown 1
            MoveTo 1086, 685
            Delay 101
            LeftUp 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_RED_N_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 288, 711
            Delay 464
            LeftDown 1
            Delay 17
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 292, 149
            Delay 269
            LeftDown 1
            Delay 13
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 605, 354
            Delay 1022
            LeftDown 1
            Delay 1
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 1060, 688
            Delay 733
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 1448,581,1800,862,"D:\按鍵精靈2014\screen\epic7_4-4\S.bmp",0.4,intX,intY
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
Call 史萊姆()
For i - 1
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.第七史詩.選擇隊伍()
    Call 史萊姆()
Next
Call Lib.第七史詩.CLEAR()
MessageBox "END"