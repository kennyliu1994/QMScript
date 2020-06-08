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
MacroID=3f637124-39fa-4c33-ac64-5425c75f4f3d
Description=PVP_4000
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
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "epic7_normal.txt")
Do
    Do
        dm_ret = dm.FindStr(1271, 928, 1408, 985, "戰鬥開始", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 172, 172
            Delay 1000
            LeftClick 1
            MoveTo intX, intY
            Delay 3000
            LeftClick 1
            Exit Do
        End If
    Loop     
    Do
        dm.FindPic 1711, 906, 1819, 1018, "picture\epic7\basar3.bmp", "000000", 0.9, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1056, 937
            Delay 1000
            LeftClick 1
            MoveTo intX, intY
            Delay 1000
            LeftDoubleClick 1
            Exit Do
        End If
    Loop
    MoveTo 1632, 85
    Delay 1000
    LeftClick 1
    Do
        dm_ret = dm.FindStr(1641, 932, 1734, 985, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
Loop
