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
MacroID=1dfdfde6-9040-46df-bfb9-d867bc1a507d
Description=迷宮
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
Sub 普通1右下左上
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_E()
    Do
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|-26|7FD8FF",1)
        dim MyArray
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MessageBox "帳篷"
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
        End If
    Loop Until X > 0 And Y > 0
    MessageBox "傳回中央"
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Do
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|25|7ED8FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MessageBox "END"
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
        End If
    Loop Until X > 0 And Y > 0
End Sub
Sub 普通迷宮2右上左下
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "帳篷"
    MessageBox "傳回中央"
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_S()
    MessageBox "END"
End Sub
Sub 普通迷宮3女王左上
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_E()
    MessageBox "帳篷"
    MessageBox "傳回中央"
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "END"
End Sub
Sub 地獄迷宮左上
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "帳篷"
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "關技能"
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "BOSS"
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    MessageBox "END"
End Sub
Sub 地獄迷宮右上
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_RED_N()
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "帳篷"
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_E()
    MessageBox "手動"
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_S()
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_RED_N()
    MessageBox "關技能"
    MessageBox "END"
End Sub
Sub 尼克斯特的聖所
    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.GO_RED_N()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FD9FF","-25|-25|7BD6FF",1)
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
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_W()
    Call Lib.epic7_ver2.GO_RED_N()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FD9FF","-25|-25|7BD6FF",1)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If X > 0 And Y > 0 Then 
            MessageBox "商人"
            Delay 2000
        End If
    Loop Until X > 0 And Y > 0
    Call Lib.epic7_ver2.GO_E()
    Do
        Call Lib.epic7_ver2.寶箱()
        XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"7FDAFF","24|-26|7FD8FF",1)
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
    Call Lib.epic7_ver2.GO_E()
    Call Lib.epic7_ver2.GO_E()
    MessageBox "手動"
    MessageBox "END"
End Sub
i = inputbox("1 普通迷宮1右下左上" & vbcr & "2 普通迷宮2右上左下" & vbcr & "3 普通迷宮3女王左上" & vbcr & "4 地獄迷宮左上" & vbcr & "5 地獄迷宮右上"& vbcr & "6 尼克斯特的聖所", "提示")
If i = 1 Then Call 普通1右下左上()
If i = 2 Then Call 普通迷宮2右上左下()
If i = 3 Then Call 普通迷宮3女王左上()
If i = 4 Then Call 地獄迷宮左上()
If i = 5 Then Call 地獄迷宮右上()
If i = 6 Then Call 尼克斯特的聖所()
