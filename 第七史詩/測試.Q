[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=3a3b1d05-9c2c-4b7e-a239-e19e2bf51295
Description=測試
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
//Call Lib.epic7_ver2.GO_S()
//Call Lib.epic7_ver2.GO_W()
//Call Lib.epic7_ver2.GO_RED_N()
//Call Lib.epic7_ver2.GO_E()
Do
    XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|-26|7FD8FF",1)
    dim MyArray
    MyArray = Split(XY, "|")
    X = CInt(MyArray(0)): Y = CInt(MyArray(1))
    If X > 0 And Y > 0 Then 
        '==========以下是按鍵精靈錄製的內容==========
        MoveTo 967, 559
        Delay 477
        LeftClick 1
        MoveTo 1095, 672
        Delay 1142
        LeftClick 1
        '==========以上是按鍵精靈錄製的內容==========
        Delay 2000
    End If
Loop Until X > 0 And Y > 0
