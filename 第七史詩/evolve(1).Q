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
MacroID=6929140d-1d5e-48fa-a5bf-8bc4fce4d30c
Description=白狼進化
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
        dm_ret = dm.FindStr(1439, 436, 1514, 478, "Max", "ff8205-303030|ff9e13-303030", 0.9, intX, intY)
        If intX > 0 And intY > 0 Then 
            Do
                dm_ret = dm.FindStr(932, 943, 1004, 989, "升級", "fdf9f0-303030|bdc4b8-303030", 0.9, intX, intY)
                If intX > 0 And intY > 0 Then 
                    MoveTo intX, intY
                    Delay 1000
                    LeftClick 1
                    Exit Do
                End If    
            Loop
            Exit Do
        End If 
    Loop
    Do
        dm_ret = dm.FindStr(796, 934, 868, 977, "清空", "fdf9f0-303030|bdc4b8-303030", 0.9, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1510, 413
            Delay 1000
            LeftClick 1
            Delay 1000
            LeftClick 1
            MoveTo 1260, 946
            Delay 1000
            LeftClick 1
            Do
                dm_ret = dm.FindStr(1066, 630, 1141, 678, "確認", "fdf9f0-303030|bdc4b8-303030", 0.8, intX, intY)
                If intX > 0 And intY > 0 Then 
                    MoveTo intX, intY
                    Delay 1000
                    LeftClick 1
                    Exit Do
                End If    
            Loop
            Exit Do
        End If    
    Loop
Loop
