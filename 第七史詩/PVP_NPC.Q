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
dm_ret = dm.SetDict(0, "normal.txt")
Sub 挑戰
    dm_ret = dm.FindStr(1307,247,1376,972, "挑戰", "fcf7f0-303030|bec2b8-303030", 0.9, intX, intY)
    If intX > 0 And intY > 0 Then
        MoveTo intX, intY
        LeftClick 1
        Do
            dm_ret = dm.FindStr(1252,887,1385,941, "戰鬥開始", "fcf7f0-303030|bec2b8-303030", 0.8, intX, intY)
            If intX > 0 And intY > 0 Then 
                MoveTo 217, 490
                Delay 1000
                LeftClick 1
                MoveTo intX, intY
                Delay 3000
                LeftClick 1
                Exit Do
            End If
        Loop
        Do
            dm_ret = dm.FindStr(1672, 73, 1740, 117, "跳過", "a7a6a2-303030", 0.9, intX, intY)
            If intX > 0 And intY > 0 Then 
                MoveTo 1707,93
                Delay 1000
                LeftClick 1
                MoveTo 1598,94
                Delay 2000
                LeftClick 1
                Exit Do
            End If
        Loop
        Do
            dm_ret = dm.FindStr(1673,71,1742,118, "跳過", "a7a6a2-303030", 0.8, intX, intY)
            If intX > 0 And intY > 0 Then 
                MoveTo 1707,93
                Delay 1000
                LeftClick 1
                Exit Do
            End If
        Loop
        Do
            dm_ret = dm.FindStr(1612,885,1694,944, "確認","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)//    
            If intX > 0 And intY > 0 Then 
                MoveTo intX, intY
                Delay 1000
                LeftClick 1
                Exit Do
            End If    
        Loop
    End If
End Sub
Do
    Call 挑戰
    MoveTo 1221, 981
    Delay 500
    LeftDown 1
    Delay 500
    MoveTo 1221, 249
    LeftUp 1
    Delay 2000
    Call 挑戰
Loop
