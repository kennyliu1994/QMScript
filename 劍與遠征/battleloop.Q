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
MacroID=331047a9-9b81-426f-ab79-e8013b07176b
Description=戰役
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
Sub 挑戰首領
    Do
        dm_ret = dm.FindStr(919,848,1014,882, "挑戰首領","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            dm.LeftClick 
            Exit Do
        End If    
    Loop
End Sub
Sub 戰鬥
    Do
        dm_ret = dm.FindStr(910,753,1008,791, "挑戰首領","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 1000
            dm.LeftClick 
        End If    
        dm_ret = dm.FindStr(935,939,985,972, "戰鬥","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            dm.LeftClick 
            Exit Do
        End If    
    Loop
End Sub
Sub 再次挑戰或下一關
    Do
        dm_ret = dm.FindStr(918,885,1002,909, "再次挑戰","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            dm.LeftClick 
            Call 戰鬥()
        End If
        dm_ret = dm.FindStr(928,856,993,884, "下一關","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo 953,422
            Delay 1000
            dm.LeftClick
            Do
                dm_ret = dm.FindStr(919,848,1014,882, "挑戰首領","fcffff-303030", 0.9,intX,intY)
                If intX > 0 And intY > 0 Then 
                    MoveTo 965, 792
                    Delay 1000
                    dm.LeftClick 
                    Call 領取()
                    Exit Do
                End If    
            Loop
            Exit Do
        End If 
    Loop
End Sub
Sub 領取
    Do
        dm_ret = dm.FindStr(933,707,986,738, "領取","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 1000
            dm.LeftClick 
            Exit Do
        End If    
    Loop
End Sub
//////////////////////////////////////////////////////////////////////////
Set dm = createobject("dm.dmsoft")
//TracePrint dm.ver()
dm.SetPath "d:\大漠找圖"
dm_ret = dm.SetDict(0, "劍與遠征.txt")
Do
    Call 挑戰首領()
    Call 戰鬥()
    Call 再次挑戰或下一關()
Loop
