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
MacroID=ebd04ae2-3d6c-4b0e-aceb-6fdcba967a77
Description=馬卡龍塔
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
i = inputbox("迴圈幾次", "提示")
For i
    Call Lib.epic7_ver2.戰鬥開始dm()
    Do
        dm_ret = dm.FindStr(1622,891,1726,940, "下一層","fcf7f0-303030|bec2b8-303030", 0.9,intX,intY)  
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY 
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Delay 3000
Next
Call Lib.epic7_ver2.結束dm()
