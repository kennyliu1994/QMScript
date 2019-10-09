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
MacroID=9b734389-9b32-4d0e-9bf2-0c703126ae2b
Description=刷首抽
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
TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "Terra.txt")
Sub up(t)
    MoveR 0, -88*t
    Delay 500
End Sub
Sub down(t)
    MoveR 0, 88*t
    Delay 500
End Sub
Sub left(t)
    MoveR -88*t, 0
    Delay 500
End Sub
Sub right(t)
    MoveR 88*t, 0
    Delay 500
End Sub
t1 = dm.GetTime()
Do
    dm.FindPic 268,125,389,257, "picture\Terra\Terra_icon.bmp", "000000", 0.9, 0, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 30, intY + 30
        LeftDown 1        
        Delay 3000
        LeftUp 1
        MoveTo 284,133
        Delay 500
        LeftClick 1
        MoveTo 1017,555
        Delay 500
        LeftClick 1
        MoveTo 465,24
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(1580, 270, 1643, 303, "安裝", "f6fbf9-303030", 1.0, intX, intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1616,288
        Delay 500
        LeftClick 1
        MoveTo 262,26
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm.FindPic 281,134,610,218, "picture\Terra\Terra_icon.bmp", "000000", 0.9, 0, intX, intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX+30, intY+30
        Delay 1000
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(811,619,902,655, "Accept","f9fafa-303030", 1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(730,189,948,268,"TERRA","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(900,541,1025,575,"NewGame","eaeaea-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(936,423,986,459,"OK","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 960, 383
        Delay 500
        LeftClick 1
        Delay 500
        KeyDown 16, 1
        KeyPress 75, 1
        KeyPress 69, 1
        KeyPress 78, 1
        KeyPress 78, 1
        KeyPress 89, 1
        KeyUp 16, 1
        MoveTo intX, intY
        Delay 500
        LeftClick 1
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Delay 3000
Do
    dm_ret = dm.FindStr(936,423,986,459,"OK","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX, intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(829,539,884,574,"YES","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX, intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
MoveTo 1093,734
Do    
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(830,63,901,95,"World","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1080,320
        Delay 5000
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(811,64,845,95,"Ch","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 941,215
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(953,771,1033,802,"Battle","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX,intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1198,153
        Delay 1000
        LeftClick 1
        MoveTo 1005,873
        Delay 1000
        LeftDown 1
        Delay 500
        up (3)
        Delay 500
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 827,606
        Delay 1000
        LeftDown 1
        Delay 500
        up (2)
        right(2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1005,606
        Delay 2000
        LeftDown 1
        Delay 500
        up (2)
        left(2)
        down(1)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(1052,758,1134,790,"tavern!","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1090,946
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
Do
    dm_ret = dm.FindStr(824,502,898,528,"Recruit","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 862,435
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
MoveTo 1093,734
Do    
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(783,744,830,772,"Add","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1010,946
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
Do  
    dm_ret = dm.FindStr(724,548,774,575,"Party","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 797,473
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
Do  
    dm_ret = dm.FindStr(866,679,925,707,"swap","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1169,499
        Delay 1000
        LeftClick 1
        MoveTo 746,254
        Delay 2000
        LeftClick 1
        Exit Do
    End If
Loop
Do
    dm_ret = dm.FindStr(811,64,845,95,"Ch","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 942,312
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(953,771,1033,802,"Battle","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX,intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1003,871
        Delay 1000
        LeftDown 1
        Delay 500
        up (2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 823,346
        Delay 1000
        LeftDown 1
        Delay 500
        down (2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do      
    Delay 500
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1008,700
        Delay 1000
        LeftDown 1
        Delay 500
        up (4)
        left(2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 828,345
        Delay 1000
        LeftDown 1
        Delay 500
        right(2)
        down(2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 828,698
        Delay 1000
        LeftDown 1
        Delay 500
        right(2)
        LeftUp 1
        Exit Do
    End If    
Loop
MoveTo 1093,734
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(783,744,830,772,"Add","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1001,947
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
Do  
    dm_ret = dm.FindStr(724,548,774,575,"Party","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 797,473
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
Do  
    dm_ret = dm.FindStr(866,679,925,707,"swap","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1169,592
        Delay 1000
        LeftClick 1
        MoveTo 746,254
        Delay 2000
        LeftClick 1
        Exit Do
    End If
Loop
Do
    dm_ret = dm.FindStr(811,64,845,95,"Ch","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 940,411
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(953,771,1033,802,"Battle","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX,intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 914,873
        Delay 1000
        LeftDown 1
        Delay 500
        up(3)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1096,607
        Delay 1000
        LeftDown 1
        Delay 500
        up (2)
        left(2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 917,435
        Delay 1000
        LeftDown 1
        Delay 500
        right (2)
        down(2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1089,610
        Delay 1000
        LeftDown 1
        Delay 500
        right (1)
        down(3)
        LeftUp 1
        Exit Do
    End If    
Loop
MoveTo 1093,734
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(811,64,845,95,"Ch","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 945,514
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(953,771,1033,802,"Battle","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX,intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1006,872
        Delay 1000
        LeftDown 1
        Delay 500
        up (5)
        right(2)
        down(1)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 738,696
        Delay 1000
        LeftDown 1
        Delay 500
        right(2)
        up (2)
        left(1)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 825,518
        Delay 1000
        LeftDown 1
        Delay 500
        up (3)
        right(3)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1181,522
        Delay 1000
        LeftDown 1
        Delay 500
        up (2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1092,263
        Delay 1000
        LeftDown 1
        Delay 500
        left (3)
        down (5)
        right(2)
        up (2)
        right(2)
        down (1)
        LeftUp 1
        Exit Do
    End If    
Loop
MoveTo 1093,734
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(811,64,845,95,"Ch","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 943,612
        Delay 500
        LeftClick 1
        Exit Do
    End If  
Loop
Do
    dm_ret = dm.FindStr(953,771,1033,802,"Battle","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo intX,intY
        Delay 500
        LeftClick 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1097,870
        Delay 1000
        LeftDown 1
        Delay 500
        up (2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1091,520
        Delay 1000
        LeftDown 1
        Delay 500
        left (2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1095,700
        Delay 2000
        LeftClick 1
        Delay 1000
        LeftDown 1
        Delay 500
        down(1)
        left (2)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 739,522
        Delay 1000
        LeftDown 1
        Delay 500
        right(1)
        down(2)
        right(1)
        down(1)
        right(2)
        up (3)
        LeftUp 1
        Exit Do
    End If    
Loop
Do
    dm_ret = dm.FindStr(761,175,827,211,"Your","8bb382-303030",0.8,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1093,518
        Delay 1000
        LeftDown 1
        Delay 500
        up (2)
        LeftUp 1
        Exit Do
    End If    
Loop
MoveTo 1001,946
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(724,548,774,575,"Party","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1180,204
        Delay 1000
        LeftClick 1               
        MoveTo 1159,177
        Delay 1000
        LeftClick 1
        MoveTo 860,558
        Delay 1000
        LeftClick 1
        Exit Do
    End If   
Loop
Do    
    dm_ret = dm.FindStr(939,663,980,693,"OK","ffffff-303030",0.9,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX,intY
        Delay 1000
        LeftClick 1
        MoveTo 1092,952
        Delay 1000
        LeftClick 1
        Exit Do
    End If   
Loop
Do    
    dm_ret = dm.FindStr(824,502,898,528,"Recruit","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 862,435
        Delay 500
        LeftClick 1
        Exit Do
    End If 
Loop
Do    
    dm_ret = dm.FindStr(973,235,1017,261,"Fate","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 1152,693
        Delay 500
        LeftClick 1
        MoveTo 859,569
        Delay 500
        LeftClick 1
        Exit Do
    End If 
Loop
Do    
    Delay 30000
    dm_ret = dm.FindStr(1170,66,1210,102,"x","4d4d50-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX,intY
        Delay 500
        LeftClick 1
        Exit Do
    End If 
Loop
MoveTo 1093,734
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(973,235,1017,261,"Fate","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 928,692
        Delay 500
        LeftClick 1
        Exit Do
    End If 
Loop
MoveTo 1093,734
Do
    Delay 1000
    LeftClick 1
    dm_ret = dm.FindStr(973,235,1017,261,"Fate","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo 1001,942
        Delay 500
        LeftClick 1
        Exit Do
    End If 
Loop
Do  
    dm_ret = dm.FindStr(724,548,774,575,"Party","ffffff-303030",1.0,intX,intY)
    If intX > 0 And intY > 0 Then         
        MoveTo 961,479
        Delay 500
        LeftClick 1
        Exit Do
    End If
Loop
t2 = dm.GetTime()
min = Round((t2 - t1) / 1000 / 60, 1)
//sec = ((t2 - t1) / 1000) Mod 60
MessageBox "共 " & min & " 分 "
