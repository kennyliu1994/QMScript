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
MacroID=2b6793c6-a06c-4180-a5d4-327b6b59148b
Description=次元龜裂15迴圈Looptest
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
Sub 次元
    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.GO_RED_N_CLICK()
    Call Lib.epic7_ver2.GO_E_CLICK()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|25|7ED8FF",1)
        dim MyArray
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 304, 150
            Delay 337
            LeftDown 1
            Delay 20
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 460, 417
            Delay 886
            LeftDown 1
            Delay 3
            LeftClick 1
            Delay 3
            LeftUp 1
            MoveTo 1072, 678
            Delay 710
            LeftDown 1
            Delay 5
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until X > 0 And Y > 0
    Do
        Call Lib.epic7_ver2.寶箱()
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
Call 次元()
For i - 1
    Call Lib.epic7_ver2.CLEAR()
    Call Lib.epic7_ver2.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.epic7_ver2.選擇隊伍()
    Call 次元()
Next
Call Lib.epic7_ver2.CLEAR()
MessageBox "END"
