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
MacroID=c6e585ba-a5cb-419c-8c13-b71c852275ab
Description=石頭人9
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
//FindPic 1610,887,1744,941,"D:\按鍵精靈2014\screen\epic7_4-4\選擇隊伍.bmp",0.9,intX,intY
//If intX > 0 And intY > 0 Then 
//    MoveTo 1665, 915
//    Delay 1000
//    LeftClick 1
//End If
Do
    Call Lib.第七史詩.戰鬥()
    Delay 370606
    MoveTo 1306, 919
    Delay 1000
    LeftClick 1
    Delay 3000
    LeftClick 1
    Delay 3000
    LeftClick 1
    Do
        FindPic 911,238,1001,356,"D:\按鍵精靈2014\screen\epic7_4-4\CLEAR.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1665, 915
            Delay 1000
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
    Do
        FindPic 1599,891,1672,938,"D:\按鍵精靈2014\screen\epic7_4-4\確認.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1638, 913
            Delay 1000
            LeftClick 1
            Delay 2000
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
Loop
