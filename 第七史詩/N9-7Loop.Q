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
MacroID=4eea5154-44d0-4311-81c8-d6160dcf1f0f
Description=人造生物27迴圈
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
Sub 人造生物
    Call Lib.第七史詩.戰鬥()
    Call Lib.第七史詩.GO_E_CLICK()
    Call Lib.第七史詩.GO_S_CLICK()
    Call Lib.第七史詩.GO_E_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 264, 161
            Delay 317
            LeftDown 1
            Delay 9
            LeftDown 1
            Delay 30
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 410, 827
            Delay 1229
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1093, 647
            Delay 881
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_W_CLICK()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 312, 148
            Delay 333
            LeftDown 1
            Delay 28
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 856, 393
            Delay 1519
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 3
            LeftUp 1
            MoveTo 1056, 708
            Delay 654
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If        
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.第七史詩.寶箱()
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
Call 人造生物()
For i - 1
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.第七史詩.選擇隊伍()
    Call 人造生物()
Next
Call Lib.第七史詩.CLEAR()
MessageBox "END"
