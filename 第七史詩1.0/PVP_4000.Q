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
MacroID=2c7ce0be-6f9d-461d-8340-8881022e2bbf
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
    dm_ret = dm.FindStr(1307, 247, 1376, 972, "挑戰", "fcf7f0-303030|bec2b8-303030", 0.9, intX, intY)
    If intX > 0 And intY > 0 Then
        MoveTo intX, intY
        LeftClick 1
        Do
            dm_ret = dm.FindStr(1252, 887, 1385, 941, "戰鬥開始", "fcf7f0-303030|bec2b8-303030", 0.8, intX, intY)
            If intX > 0 And intY > 0 Then 
                MoveTo 210,170
                Delay 1000
                LeftClick 1
                MoveTo intX, intY
                Delay 3000
                LeftClick 1
                Exit Do
            End If
        Loop
        Do
            dm.FindPic 1675,872,1773,969, "picture\epic7\dizzy3.bmp", "000000", 0.9, 0, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo intX,intY
                Delay 1000
                LeftDoubleClick 1
                Exit Do
            End If
        Loop
        Dim tmp
        tmp=0
        Do
            dm.FindPic 1541,871,1643,967, "picture\epic7\iseria2.bmp", "000000", 0.9, 0, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo intX,intY
                Delay 1000
                LeftClick 1
                Call Lib.epic7.help_right()
                Delay 3000
                Do
                    dm.FindPic 1675,872,1773,969, "picture\epic7\iseria3.bmp", "000000", 0.9, 0, intX, intY
                    If intX > 0 And intY > 0 Then 
                        MoveTo intX,intY
                        Delay 1000
                        LeftDoubleClick 1
                        tmp=tmp+1
                        Exit Do
                    End If
                Loop
            End If
            dm.FindPic 1675,872,1773,969, "picture\epic7\idol3.bmp", "000000", 0.9, 0, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo intX,intY
                Delay 1000
                LeftDoubleClick 1
                Delay 3000
                Do
                    dm.FindPic 1541,871,1643,967, "picture\epic7\idol2.bmp", "000000", 0.9, 0, intX, intY
                    If intX > 0 And intY > 0 Then 
                        MoveTo intX,intY
                        Delay 1000
                        LeftDoubleClick 1
                        tmp=tmp+1
                        Exit Do
                    End If
                Loop
            End If
            dm.FindPic 1675,872,1773,969, "picture\epic7\arbiter vildred3.bmp", "000000", 0.9, 0, intX, intY
            If intX > 0 And intY > 0 Then 
                MoveTo 1055, 899 
                Delay 1000
                LeftClick 1
                MoveTo intX,intY
                Delay 1000
                LeftDoubleClick 1
                tmp=tmp+1
            End If
            While tmp = 3
                Exit Do
            Wend
        Loop
        MoveTo 1598,90
        Delay 1000
        LeftClick 1
        Do
            dm_ret = dm.FindStr(1606,891,1704,938, "確認", "fcf7f0-303030|bec2b8-303030", 0.8, intX, intY)
            If intX > 0 And intY > 0 Then 
                MoveTo intX, intY
                Delay 1000
                LeftClick 1
                Exit Do
            End If    
        Loop
    End If  
Loop
