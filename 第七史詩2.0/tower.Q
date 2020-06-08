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
MacroID=ace1065a-4b36-430d-9601-82ebb6df0ae6
Description=馬卡龍塔(自動買體)
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
i = inputbox("迴圈幾次", "提示")
For i
    Call Lib.epic7.戰鬥開始()
    Call Lib.epic7.行動力不足()
    Do
        dm_ret = dm.FindStr(1659, 932, 1770, 983, "下一層", "fdf9f0-303030|bdc4b8-303030", 0.9, intX, intY)
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY 
            Delay 1000
            LeftClick 1
            Exit Do
        End If    
    Loop
    Delay 3000
Next
Call Lib.epic7.結束()
