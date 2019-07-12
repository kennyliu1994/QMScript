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
MacroID=7310245f-61fc-47cc-89c0-a41f8083fdf9
Description=機械18迴圈
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
        FindPic 1593,346,1671,416,"D:\按鍵精靈2014\screen\epic7_4-4\E_N2-9.bmp",0.8,intX,intY
        If intX> 0 And intY> 0 Then
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
Sub 機械
    Call Lib.第七史詩.戰鬥()
    Call GO_E()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 249,686,326,751,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            MoveTo 1071, 677
            Delay 1087
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_E_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 249,686,326,751,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 285, 162
            Delay 251
            LeftClick 1
            MoveTo 250, 427
            Delay 1221
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1063, 684
            Delay 935
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_S()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 249,686,326,751,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.3,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
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
    Call Lib.第七史詩.GO_S_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 1593,346,1671,416,"D:\按鍵精靈2014\screen\epic7_4-4\E_N2-9.bmp",0.8,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 310, 152
            Delay 332
            LeftClick 1
            MoveTo 603, 77
            Delay 1588
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1141, 687
            Delay 839
            LeftDown 1
            Delay 2
            LeftClick 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
    Do
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
Call 機械()
For i - 1
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.第七史詩.選擇隊伍()
    Call 機械()
Next
Call Lib.第七史詩.CLEAR()
MessageBox "END"
