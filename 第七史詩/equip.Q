[General]
MacroID=39cd7f43-fc3f-4a47-86c5-2275c5b35261
SyntaxVersion=2
BeginHotkey=119
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
Description=¸Ë³Æ
Enable=1
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
dm.SetPath "d:\????"
dm_ret = dm.SetDict(0, "??.txt")
//////////////////////////////////////////////////////////////////////////??
Dim output(13)
Dim part
part = inputbox("??" & vbcr & "1 ??" & vbcr & "2 ??" & vbcr & "3 ??" & vbcr & "4 ??" & vbcr & "5 ??" & vbcr & "6 ??", "??")
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
//////////////////////////////////////////////////////////////////////////???
Dim value
value = Split(inputbox("??", "??"), " ", - 1 , 1)
//////////////////////////////////////////////////////////////////////////????
Dim name(5)
Delay 1000
Dim main(8)
main(0) = "????"
main(1) = "???"
main(2) = "???"
main(3) = "???"
main(4) = "???"
main(5) = "??"
main(6) = "????"
main(7) = "????"
For Each i In main
    dm_ret = dm.FindStr(698, 477, 834, 530, i, "fcf7f0-303030|bec2b8-303030", 1.0, intX, intY)
    If intX > 0 And intY > 0 Then 
        name(0) = i
    End If
Next
//////////////////////////////////////////////////////////////////////////????
Dim Chi_secondary(8)
Chi_secondary(0) = "????"
Chi_secondary(1) = "???"
Chi_secondary(2) = "???"
Chi_secondary(3) = "???"
Chi_secondary(4) = "???"
Chi_secondary(5) = "??"
Chi_secondary(6) = "????"
Chi_secondary(7) = "????"
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
//////////////////////////////////////////////////////////////////////////???
For i = 0 To 4
    If StrComp(name(i), "???") = 0  Then 
        If value(i) > 0
            output(2) = value(i)
        Else 
            output(3) = -value(i)
        End If
    ElseIf StrComp(name(i), "???") = 0 Then 
        If value(i) > 0
            output(4) = value(i)
        Else 
            output(5) = -value(i)
        End If
    ElseIf StrComp(name(i), "???") = 0 Then 
        If value(i) > 0
            output(6) = value(i)
        Else 
            output(7) = -value(i)
        End If
    ElseIf StrComp(name(i), "???") = 0 Then 
        output(8) = -value(i)
    ElseIf StrComp(name(i), "????") = 0 Then 
        output(9) = -value(i)
    ElseIf StrComp(name(i), "????") = 0 Then 
        output(10) = -value(i)
    ElseIf StrComp(name(i), "????") = 0 Then 
        output(11) = -value(i)
    ElseIf StrComp(name(i), "??") = 0 Then 
        output(12) = value(i)
    Else 
        TracePrint "Not Found"
    End If
Next
For i = 0 To 12
    TracePrint output(i)
Next