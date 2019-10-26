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
MacroID=02f31d51-a4a1-4927-b5ec-723790ba54d2
Description=肥料進化
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
dm_ret = dm.SetDict(0, "normal.txt")
Do
    Do
        dm_ret = dm.FindStr(1411,417,1487,464, "Max","ff8205-303030|ff9e13-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            Do
                dm_ret = dm.FindStr(917,902,998,947, "升級","fcf7f0-303030|bec2b8-303030", 0.9,intX,intY)
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
        dm_ret = dm.FindStr(800,890,876,939, "清空","fcf7f0-303030|bec2b8-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 1510, 413
            Delay 1000
            LeftClick 1
            Delay 1000
            LeftClick 1
            MoveTo 1223,905
            Delay 1000
            LeftClick 1
            Do
                dm_ret = dm.FindStr(1058,604,1132,650, "確認","fcf7f0-303030|bec2b8-303030", 0.9,intX,intY)
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
        dm_ret = dm.FindStr(865,254,1047,314, "升級成功","fcf7f0-303030|bec2b8-303030", 1.0,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
Loop
