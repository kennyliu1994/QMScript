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
MacroID=9891b6cc-97d8-4daf-a488-c83aee60c182
Description=野生植物20迴圈
Enable=1
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
Sub GO_E_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 1598,349,1663,413,"D:\按鍵精靈2014\screen\epic7_4-4\E_N7-1.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
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
Sub 植物
    Call Lib.第七史詩.戰鬥()
    Call GO_E_CLICK()
    Call Lib.第七史詩.GO_RED_N_CLICK()
    Delay 1000
    Call Lib.第七史詩.GO_RED_N()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 1448,581,1800,862,"D:\按鍵精靈2014\screen\epic7_4-4\S.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 292, 162
            Delay 321
            LeftDown 1
            Delay 18
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 565, 628
            Delay 1209
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1114, 680
            Delay 847
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 3
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_S()
    Call GO_E_CLICK()
    Delay 1000
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 304, 160
            Delay 303
            LeftDown 1
            Delay 14
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 620, 350
            Delay 1790
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1059, 673
            Delay 831
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call 寶箱()
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
Call 植物()
For i - 1
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.第七史詩.選擇隊伍()
    Call 植物()
Next
Call Lib.第七史詩.CLEAR()
MessageBox "END"
