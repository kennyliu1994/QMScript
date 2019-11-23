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
MacroID=5b2aa54a-7939-4184-acdd-d5a04f0296d1
Description=王座之塔
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
Sub 挑戰
    Do
        dm_ret = dm.FindStr(939,702,981,727, "挑戰","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 500
            dm.LeftClick
            Exit Do
        End If    
    Loop
End Sub
Sub 戰鬥
    Do
        dm_ret = dm.FindStr(935,939,985,972, "戰鬥","fcffff-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 500
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
            Delay 500
            dm.LeftClick 
            Call 戰鬥()
        End If
        dm_ret = dm.FindStr(784,421,1132,495, "VICTORY","ffffe5-303030", 0.9,intX,intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            Delay 500
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
    Call 挑戰()
    Call 戰鬥()
    Call 再次挑戰或下一關()
Loop
