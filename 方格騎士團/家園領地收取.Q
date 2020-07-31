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
MacroID=c9a579d8-4806-4a1f-97d9-920eb98ea87c
Description=家園領地收取
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
TracePrint "大漠版本：" & dm.ver()
dm.SetPath "d:\大漠找圖"
//dm_ret = dm.SetDict(0, "epic7_normal.txt")
Dim times
Dim is_search
times = 1
is_search = 0
TracePrint "開始運行時間：" & Time
While 1
    TracePrint "第" & times & "次搜尋時間：" & Time
    Do
        If is_search = 0 Then
            is_search = 1
            TracePrint "搜尋中..."
        End If
        dm.FindPic 688, 350, 770, 430, "picture\方格騎士團\麵包.bmp", "000000", 0.8, 0, intX, intY
        If intX > 0 And intY > 0 Then 
            MoveTo 961, 686
            Delay 1000
            LeftClick 1
            MoveTo 727, 398
            Delay 1000
            LeftClick 1
            MoveTo 857, 994
            Delay 1000
            LeftClick 1
            MoveTo 992, 676
            Delay 1000
            LeftClick 1
            MoveTo 798, 714
            Delay 1000
            LeftClick 1
            MoveTo 962, 782
            Delay 1000
            LeftClick 1
            MoveTo 1125, 719
            Delay 1000
            LeftClick 1
            MoveTo 1172, 615
            Delay 1000
            LeftClick 1
            MoveTo 720, 989
            Delay 1000
            LeftClick 1
            MoveTo 1033, 997
            Delay 1000
            LeftClick 1
            times = times + 1
            is_search = 0
            Exit Do
        End If
    Loop
    TracePrint "結束搜尋時間：" & Time
    Delay 1000 * 60 * 60
    //    Delay 2000
Wend