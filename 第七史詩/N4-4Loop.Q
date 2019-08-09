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
Sub 鈴鐺鼠部落()
    Call Lib.epic7_ver2.戰鬥開始()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|25|7ED8FF",1)
        dim MyArray
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 237, 146
            Delay 374
            LeftClick 1
            MoveTo 463, 492
            Delay 1150
            LeftClick 1
            MoveTo 1102, 665
            Delay 791
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 1000
        End If
    Loop Until X > 0 And Y > 0
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_S()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|25|7ED8FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
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
    Loop Until X > 0 And Y > 0
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_E()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|25|7ED8FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
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
    Loop Until X > 0 And Y > 0
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|25|7ED8FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            Delay 3000
            MoveTo 965, 582
            LeftClick 1
            Delay 1000
            MoveTo 1095, 676
            LeftClick 1
        End If
    Loop Until X > 0 And Y > 0
End Sub
i = inputbox("迴圈幾次", "提示")
Call 鈴鐺鼠部落()
For i - 1
    Call Lib.epic7_ver2.CLEAR()
    Call Lib.epic7_ver2.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.epic7_ver2.選擇隊伍()
    Call 鈴鐺鼠部落()
Next
Call Lib.epic7_ver2.CLEAR()
MessageBox "END"
