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
MacroID=1c0d74ce-159c-47b5-a7f9-8084ca0a739d
Description=PVP_NPC
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
Sub 挑戰
    dm.FindStr 1326, 290, 1398, 1020, "挑戰", "fdf9f0-303030|bdc4b8-303030", 0.9, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Do
            dm.FindStr 1271, 928, 1408, 985, "戰鬥開始", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo 169, 254
                Delay 1000
                LeftClick 1
                MoveTo intX, intY
                Delay 3000
                LeftClick 1
                Exit Do
            End If
        Loop
        Do
            dm.FindStr 860, 248, 1057, 311, "購買旗幟", "fdf9f0-303030|bdc4b8-303030", 1.0, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo 799, 759
                Delay 1000
                LeftClick 1
                ExitScript
            End If
            dm.FindStr 1715, 72, 1776, 114, "跳過", "8a8a89-303030", 0.8, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo intX, intY
                Delay 1000
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
            dm.FindStr 1715, 72, 1776, 114, "跳過", "8a8a89-303030", 0.8, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo intX, intY
                Delay 1000
                LeftClick 1
                Exit Do
            End If    
        Loop
        Do
            dm.FindStr 1641, 932, 1734, 985, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo intX, intY
                Delay 1000
                LeftClick 1
                Exit Do
            End If    
        Loop
    Else 
        MoveTo 1221, 981
        Delay 500
        LeftDown 1
        Delay 500
        MoveTo 1221, 249
        LeftUp 1
        Delay 2000
    End If
End Sub
Do
    dm.FindStr 1555, 317, 1689, 368, "NPC對戰", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY
    If intX > 0 And intY > 0 Then 
        Call 挑戰        
    End If    
Loop