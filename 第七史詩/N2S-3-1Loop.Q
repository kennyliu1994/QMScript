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
Sub 迴圈肥料()
    Do
        dm.FindPic 160,866,241,974, "picture\epic7\medicine.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 303, 172
            Delay 1200
            LeftClick 1
            MoveTo 468, 298
            Delay 870
            LeftClick 1
            MoveTo 1113, 687
            Delay 1119
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
    Do
        FindPic 248,686,327,751,"D:\按鍵精靈2014\screen\epic7_4-4\W_N3-1.bmp",0.5,intX,intY
        If intX> 0 And intY> 0 Then
            Delay 1000
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 267, 145
            Delay 286
            LeftClick 1
            MoveTo 486, 460
            Delay 967
            LeftClick 1
            MoveTo 1127, 694
            Delay 911
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        FindPic 1598,680,1660,748,"D:\按鍵精靈2014\screen\epic7_4-4\S_N3-1.bmp",0.4,intX,intY
        If intX> 0 And intY> 0 Then
            Delay 1000
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 278, 139
            Delay 313
            LeftClick 1
            MoveTo 702, 691
            Delay 1055
            LeftClick 1
            MoveTo 1116, 680
            Delay 821
            LeftClick 1
            '==========以上是按鍵精靈錄製的內容==========
        End If
    Loop Until intX > 0 And intY > 0
    Do
        Call Lib.epic7.寶箱dm()
        dm_ret = dm.CmpColor(1663, 348, "ffd276", 1.0)
        If dm_ret = 0 Then            
            Delay 1000
            MoveTo 965, 582
            LeftClick 1
            Delay 1000
            MoveTo 1095, 676
            LeftClick 1
            Exit Do
        End If
    Loop 
End Sub
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
i = inputbox("迴圈幾次", "提示")
For i - 1
    Call Lib.epic7.戰鬥開始dm()
    Call 迴圈肥料()
    Call Lib.epic7.CLEARdm()
    Call Lib.epic7.確認dm()
    Call Lib.epic7.準備戰鬥dm()
    Call Lib.epic7.選擇隊伍dm()
Next
Call Lib.epic7.戰鬥開始dm()
Call 迴圈肥料()
Call Lib.epic7.CLEARdm()
Call Lib.epic7.結束dm()
