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
MacroID=39cd7f43-fc3f-4a47-86c5-2275c5b35261
Description=epic7_equipment
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
dm_ret = dm.SetDict(0, "epic7_equipment.txt")
//////////////////////////////////////////////////////////////////////////部位
Dim output(13)
For i = 0 To 12
    output(i) = 0
Next
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
//////////////////////////////////////////////////////////////////////////套裝
Dim suit(13)
suit(0) = "吸血"
suit(1) = "速度"
suit(2) = "抵抗"
suit(3) = "憤怒"
suit(4) = "生命"
suit(5) = "免疫"
suit(6) = "防禦"
suit(7) = "破滅"
suit(8) = "暴擊"
suit(9) = "反擊"
suit(10) = "夾攻"
suit(11) = "攻擊"
suit(12) = "命中"
For Each i In suit
    dm_ret = dm.FindStr(712,715,861,762, i, "fcf7f0-303030|bec2b8-303030", 1.0, intX, intY)
    If intX > 0 And intY > 0 Then 
        output(1) = i
    End If
Next
//////////////////////////////////////////////////////////////////////////輸入數值
Dim value
value = Split(inputbox("數值", "提示"), " ", - 1 , 1)
//////////////////////////////////////////////////////////////////////////主屬中文
Dim name(5)
Delay 1000
Dim main(8)
main(0) = "暴擊傷害"
main(1) = "暴擊率"
main(2) = "生命力"
main(3) = "攻擊力"
main(4) = "防禦力"
main(5) = "速度"
main(6) = "效果命中"
main(7) = "效果抗性"
For Each i In main
    dm_ret = dm.FindStr(698, 477, 834, 530, i, "fcf7f0-303030|bec2b8-303030", 1.0, intX, intY)
    If intX > 0 And intY > 0 Then 
        name(0) = i
    End If
Next
//////////////////////////////////////////////////////////////////////////副屬中文
Dim Chi_secondary(8)
Chi_secondary(0) = "生命力"
Chi_secondary(1) = "暴擊傷害"
Chi_secondary(2) = "攻擊力"
Chi_secondary(3) = "防禦力"
Chi_secondary(4) = "效果命中"
Chi_secondary(5) = "效果抗性"
Chi_secondary(6) = "速度"
Chi_secondary(7) = "暴擊率"
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
//For i = 0 To 4
//    TracePrint name(i)
//Next
//////////////////////////////////////////////////////////////////////////輸出
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
//For i = 0 To 12
//    TracePrint output(i)
//Next
dm.WriteFile "epic7_output.txt", vbcr & output(0)
For i = 1 To 12
    dm.WriteFile "epic7_output.txt", " " & output(i)
Next
