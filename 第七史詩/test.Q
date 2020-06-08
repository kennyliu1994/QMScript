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
MacroID=4b67f969-5442-4655-955b-68cb70127ea5
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
dm_ret = dm.SetDict(0, "epic7_normal.txt")
//////////////////////////////////////////////////////////////////////////測試
Call Lib.epic7.GO_W()

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////找色
//dm_ret = dm.FindColor(706,209,1214,765, "123456-000000|aabbcc-030303|ddeeff-202020", 1.0, 0, intX, intY)
//If intX > 0 and intY > 0 Then
//    MessageBox "找到"
//End If
//////////////////////////////////////////////////////////////////////////寫檔
//dm.WriteFile "123.txt", vbcr & "哈哈哈"
//////////////////////////////////////////////////////////////////////////找字
//Do
//    dm_ret = dm.FindStr(1587, 926, 1738, 981, "戰鬥開始", "fdf9f0-303030", 0.8, intX, intY)
//    If intX > 0 And intY > 0 Then 
//        TracePrint "FOUND"
//    Else 
//        TracePrint "NOT FOUND"
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
//    dm.FindPic 204, 713, 292, 798, "picture\epic7\主線W.bmp", "000000", 0.7, 0, intX, intY
//    If intX > 0 And intY > 0 Then 
//        MoveTo intX, intY
//    End If    
//Loop
//////////////////////////////////////////////////////////////////////////
