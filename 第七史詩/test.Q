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
MacroID=688f6649-260b-4e02-a055-190e6701c9ef
Description=測試
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
//////////////////////////////////////////////////////////////////////////
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "normal.txt")
//////////////////////////////////////////////////////////////////////////測試
dm_ret = dm.FindStr(1604,889,1736,942, "重新進行","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
Do
    dm_ret = dm.FindStr(1604,889,1736,942, "重新進行","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY 
    End If    
Loop
////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////找字
//Do
//    dm_ret = dm.FindStr(1610,894,1731,935, "再來一次","fcf7f0-303030|bec2b8-303030", 0.8,intX,intY)//    
//    If intX > 0 And intY > 0 Then 
//        MoveTo intX, intY 
//        Delay 1000
//        LeftClick 1
//        Exit Do
//    End If    
//Loop
//////////////////////////////////////////////////////////////////////////找多點
//Do
//    XY=Plugin.Color.FindMutiColor(0,0,1920,1080,"CCCCCC","37|18|898989,93|1|DBDBDB",1)
//    dim MyArray
//    MyArray = Split(XY, "|")
//    X = CInt(MyArray(0)): Y = CInt(MyArray(1))
//    If X > 0 And Y > 0 Then 
//        TracePrint "FOUND"
//    Else 
//        TracePrint "NOT FOUND"
//    End If
//Loop 
//////////////////////////////////////////////////////////////////////////找點
//Dim b
//b=0
//For 100
//    IfColor 941, 414, "C7D4D7", 0 Then
//        b=b+1
//    Else 
//    End If
//Next
//TracePrint b
//////////////////////////////////////////////////////////////////////////找圖片
//Do
//    dm.FindPic 119,275,1799,427, "picture\哥布林閘門.bmp", "000000", 0.6, 0, intX, intY
//    If intX > 0 And intY > 0 Then 
//        MoveTo intX, intY 
//        LeftClick 1
//    End If    
//Loop
//////////////////////////////////////////////////////////////////////////
