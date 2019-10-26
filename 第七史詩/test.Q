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
dm_ret = dm.SetDict(0, "裝備.txt")
//////////////////////////////////////////////////////////////////////////測試
Dim output(13)
Dim part
part = inputbox("部位" & vbcr & "1 武器" & vbcr & "2 帽子" & vbcr & "3 衣服" & vbcr & "4 項鍊" & vbcr & "5 戒指" & vbcr & "6 鞋子", "提示")
If part = 1 Then 
    output(0) = "w"
ElseIf part = 2 Then
    output(0) = "h"
ElseIf part = 3 Then
    output(0) = "a"
ElseIf part = 4 Then
    output(0) = "n"
ElseIf part = 5 Then
    output(0) = "r"
ElseIf part  = 6 Then
    output(0) = "b"
Else 
End If
Dim name(5)
Dim value
value = Split(inputbox("數值", "提示"), " ", - 1 , 1)
Delay 1000
Dim main(8)
main(0) = "暴擊傷害"
main(1) = "暴擊率"
main(2) = "生命力"
main(3) = "攻擊力"
main(4) = "防禦力"
main(5) = "速度"
main(6) = "效果命中"
main(7) = "效果抵抗"
For Each i In main
    dm_ret = dm.FindStr(698, 477, 834, 530, i, "fcf7f0-303030|bec2b8-303030", 1.0, intX, intY)
    If intX > 0 And intY > 0 Then 
        name(0) = i
    End If
Next
Dim Chi_secondary(8)
Chi_secondary(0) = "暴擊傷害"
Chi_secondary(1) = "暴擊率"
Chi_secondary(2) = "生命力"
Chi_secondary(3) = "攻擊力"
Chi_secondary(4) = "防禦力"
Chi_secondary(5) = "速度"
Chi_secondary(6) = "效果命中"
Chi_secondary(7) = "效果抗性"
For Each i In Chi_secondary
    dm_ret = dm.FindStr(668, 560, 775, 592, i, "828282-303030|5e5e5e-303030", 0.8, intX, intY)
    If intX > 0 And intY > 0 Then 
        name(1) = i
    End If
Next
For Each i In Chi_secondary
    dm_ret = dm.FindStr(668, 591, 777, 625, i, "828282-303030|5e5e5e-303030", 0.8, intX, intY)
    If intX > 0 And intY > 0 Then 
        name(2) = i
    End If
Next
For Each i In Chi_secondary
    dm_ret = dm.FindStr(666, 622, 782, 655, i, "828282-303030|5e5e5e-303030", 0.8, intX, intY)
    If intX > 0 And intY > 0 Then 
        name(3) = i
    End If
Next
For Each i In Chi_secondary
    dm_ret = dm.FindStr(667, 652, 776, 687, i, "828282-303030|5e5e5e-303030", 0.8, intX, intY)    
    If intX > 0 And intY > 0 Then 
        name(4) = i
    End If
Next
For i = 0 To 4
    TracePrint name(i)
Next
//r 3 0 0 0 13 12 60 0 0 22 0 3
For i = 1 To 12
    output(i) = 0
Next
For i = 0 To 4
    If StrComp(name(i), "攻擊力") = 0  Then 
        If value(i) > 0
            output(2) = value(i)
        Else 
            output(3) = -value(i)
        End If
    ElseIf StrComp(name(i), "生命力") = 0 Then 
        If value(i) > 0
            output(4) = value(i)
        Else 
            output(5) = -value(i)
        End If
    ElseIf StrComp(name(i), "防禦力") = 0 Then 
        If value(i) > 0
            output(6) = value(i)
        Else 
            output(7) = -value(i)
        End If
    ElseIf StrComp(name(i), "暴擊率") = 0 Then 
        output(8) = -value(i)
    ElseIf StrComp(name(i), "暴擊傷害") = 0 Then 
        output(9) = -value(i)
    ElseIf StrComp(name(i), "效果命中") = 0 Then 
        output(10) = -value(i)
    ElseIf StrComp(name(i), "效果抗性") = 0 Then 
        output(11) = -value(i)
    ElseIf StrComp(name(i), "速度") = 0 Then 
        output(12) = value(i)
    Else 
        TracePrint "Not Found"
    End If
Next
For i = 0 To 12
    TracePrint output(i)
Next
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////找字
//Do
//    dm_ret = dm.FindStr(1087,487,1265,541, "傷心回憶","fcf7f0-303030|bec2b8-303030", 1.0,intX,intY)
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
