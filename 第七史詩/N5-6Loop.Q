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
MacroID=9760c7bc-d063-4e8a-98f0-5ea43bfb168a
Description=鱗紋部落22迴圈Looptest
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
Sub 鱗紋部落
    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 303, 166
            Delay 377
            LeftClick 1
            MoveTo 480, 453
            Delay 1239
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1077, 695
            Delay 958
            LeftDown 1
            Delay 2
            LeftDown 1
            MoveTo 1078, 696
            Delay 110
            LeftUp 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_S_CLICK()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Call Lib.epic7_ver2.GO_S_CLICK()
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
Call 鱗紋部落()
For i - 1
    Call Lib.epic7_ver2.CLEAR()
    Call Lib.epic7_ver2.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.epic7_ver2.選擇隊伍()
    Call 鱗紋部落()
Next
Call Lib.epic7_ver2.CLEAR()
MessageBox "END"
