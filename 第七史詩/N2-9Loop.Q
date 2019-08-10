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
Sub 機械
    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.GO_E()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|-26|7FD8FF",1)
        dim MyArray
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then
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
    Loop Until X > 0 And Y > 0
    Call Lib.epic7_ver2.GO_E_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|-26|7FD8FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then
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
    Loop Until X > 0 And Y > 0
    Call Lib.epic7_ver2.GO_S()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|-26|7FD8FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then
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
    Loop Until X > 0 And Y > 0
    Call Lib.epic7_ver2.GO_S_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FD9FF","-25|25|7AD4FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
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
    Loop Until X > 0 And Y > 0
    Do
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FD9FF","-25|-25|7BD6FF",1)
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
Call 機械()
For i - 1
    Call Lib.epic7_ver2.CLEAR()
    Call Lib.epic7_ver2.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.epic7_ver2.選擇隊伍()
    Call 機械()
Next
Call Lib.epic7_ver2.CLEAR()
MessageBox "END"
