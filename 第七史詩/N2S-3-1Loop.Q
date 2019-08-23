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
MacroID=0939e4ba-b8fb-4479-ab99-eab1c11d36f7
Description=肥料+親密度Loop
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
Sub 迴圈肥料()
    //    Call Lib.epic7_ver2.戰鬥開始()
    Call Lib.epic7_ver2.戰鬥開始dm()
    Do
        Call Lib.epic7_ver2.寶箱()
        FindPic 120,804,314,996,"D:\按鍵精靈2014\screen\epic7_4-4\藥水.bmp",0.8,intX,intY
        If intX > 0 And intY > 0 Then 
            Delay 1000
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 303, 172
            Delay 200
            LeftDown 1
            Delay 27
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 468, 298
            Delay 870
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1113, 687
            Delay 1119
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.epic7_ver2.寶箱()
        FindPic 248,686,327,751,"D:\按鍵精靈2014\screen\epic7_4-4\W_N3-1.bmp",0.5,intX,intY
        If intX> 0 And intY> 0 Then
            Delay 1000
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 267, 145
            MoveTo 268, 145
            Delay 286
            LeftDown 1
            Delay 14
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 486, 460
            Delay 967
            LeftDown 1
            Delay 1
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1127, 694
            Delay 911
            LeftDown 1
            Delay 1
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.epic7_ver2.寶箱()
        FindPic 1598,680,1660,748,"D:\按鍵精靈2014\screen\epic7_4-4\S_N3-1.bmp",0.4,intX,intY
        If intX> 0 And intY> 0 Then
            Delay 1000
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 278, 139
            Delay 313
            LeftDown 1
            Delay 27
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 702, 691
            Delay 1055
            LeftDown 1
            Delay 5
            LeftClick 1
            Delay 2
            LeftUp 1
            MoveTo 1116, 680
            Delay 821
            LeftDown 1
            Delay 4
            LeftClick 1
            Delay 2
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do        
        IfColor 1663, 348, "76D2FF", 0 Then
            '==========以下是按鍵精靈錄製的內容==========
            Delay 1000
            MoveTo 965, 582
            LeftClick 1
            Delay 1000
            MoveTo 1095, 676
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
            Exit Do
        End If
    Loop 
End Sub
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
hwnd = dm.GetMousePointWindow()
dm_ret = dm.BindWindow(hwnd, "normal", "normal", "normal", 0)
dm_ret = dm.SetDict(0, "normal.txt")
i = inputbox("迴圈幾次", "提示")
Call 迴圈肥料()
For i - 1
    //    Call Lib.epic7_ver2.CLEAR()
    //    Call Lib.epic7_ver2.確認()
    Call Lib.epic7_ver2.CLEARdm()
    Call Lib.epic7_ver2.確認dm()
    //準備戰鬥
    //    Delay 5000
    //    MoveTo 1490, 914
    //    LeftClick 1
    //    Call Lib.epic7_ver2.選擇隊伍()
    Call Lib.epic7_ver2.準備戰鬥dm()
    Call Lib.epic7_ver2.選擇隊伍dm()
    Call 迴圈肥料()
Next
//Call Lib.epic7_ver2.CLEAR()
Call Lib.epic7_ver2.CLEARdm()
MessageBox "END"
dm_ret = dm.UnBindWindow()
