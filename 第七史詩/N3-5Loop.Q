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
MacroID=c78e2659-cada-4b10-8952-9de7ebc13f05
Description=不死生物21迴圈Looptest
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
Sub 不死生物
    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.GO_S_CLICK()
    Call Lib.epic7_ver2.GO_W_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱()
        FindPic 1506,281,1747,469,"D:\按鍵精靈2014\screen\epic7_4-4\E.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 317, 153
            Delay 345
            LeftDown 1
            Delay 25
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 999, 310
            Delay 1358
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 1083, 678
            Delay 782
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_RED_N_CLICK()
    Call Lib.epic7_ver2.GO_W_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱()
        FindPic 1506,281,1747,469,"D:\按鍵精靈2014\screen\epic7_4-4\E.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 947, 529
            Delay 1000
            LeftClick 1
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 320, 153
            Delay 353
            LeftDown 1
            Delay 24
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1062, 573
            Delay 1000
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 1086, 690
            Delay 678
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.epic7_ver2.寶箱()
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
Call 不死生物()
For i - 1
    Call Lib.epic7_ver2.CLEAR()
    Call Lib.epic7_ver2.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.epic7_ver2.選擇隊伍()
    Call 不死生物()
Next
Call Lib.epic7_ver2.CLEAR()
MessageBox "END"
