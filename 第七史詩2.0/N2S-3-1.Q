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
MacroID=da909f13-5981-476b-8e4e-9ffeb6ed86f6
Description=肥料
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
Sub 肥料()
    Do
        dm.FindPic 113, 898, 206, 1018, "picture\epic7\medicine.bmp", "000000", 0.9, 0, intX, intY
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
            Exit Do
        End If
    Loop
    Do
        dm.FindPic 204, 713, 292, 798, "picture\epic7\主線W.bmp", "000000", 0.7, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            Delay 1000
            MoveTo 267, 145
            Delay 286
            LeftClick 1
            MoveTo 486, 460
            Delay 967
            LeftClick 1
            MoveTo 1127, 694
            Delay 911
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm.FindPic 1629, 693, 1764, 841, "picture\epic7\主線S.bmp", "000000", 0.7, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            Delay 1000
            MoveTo 278, 139
            Delay 313
            LeftClick 1
            MoveTo 702, 691
            Delay 1055
            LeftClick 1
            MoveTo 1116, 680
            Delay 821
            LeftClick 1
            Exit Do
        End If    
    Loop
    Do
        dm_ret = dm.CmpColor(1680, 353, "ffc667", 1.0)
        If dm_ret = 0 Then   
            MoveTo 965, 582         
            Delay 1000
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
For i
    Call Lib.epic7.戰鬥開始()
    Call 肥料()
    Call Lib.epic7.CLEAR()
    Call Lib.epic7.確認()
    Do
        Call Lib.epic7.協助朋友()
        Call Lib.epic7.親密度()
        Call Lib.epic7.緊急任務()
        dm.FindStr 1446, 932, 1577, 981, "準備戰鬥", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If
    Loop
    Call Lib.epic7.選擇隊伍()
Next
Call Lib.epic7.結束()
