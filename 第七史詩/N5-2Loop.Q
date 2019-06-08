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
MacroID=335f57d3-ed78-4691-bb23-10c8c564093d
Description=阿吉瑪努斯27迴圈
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
Sub 阿吉
    Call Lib.第七史詩.戰鬥()
    Call Lib.第七史詩.GO_E()
    Do
        Call Lib.第七史詩.寶箱()
        FindPic 149,275,379,459,"D:\按鍵精靈2014\screen\epic7_4-4\N.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            '==========以下是按鍵精靈錄製的內容==========
            MoveTo 305, 155
            Delay 311
            LeftDown 1
            Delay 12
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 642, 319
            Delay 1119
            LeftDown 1
            Delay 2
            LeftClick 1
            Delay 1
            LeftUp 1
            MoveTo 1069, 687
            Delay 704
            LeftDown 1
            Delay 1
            LeftClick 1
            Delay 1
            LeftUp 1
            '==========以上是按鍵精靈錄製的內容==========
            Delay 2000
        End If
    Loop Until intX > 0 And intY > 0
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_S_CLICK()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N_CLICK()
    Call Lib.第七史詩.GO_RED_N_CLICK()
    Call Lib.第七史詩.GO_E_CLICK()
    Call Lib.第七史詩.GO_E_CLICK()
    Do
        Call 寶箱()
        FindPic 164,631,394,811,"D:\按鍵精靈2014\screen\epic7_4-4\W.bmp",0.4,intX,intY
        If intX > 0 And intY > 0 Then 
            Delay 3000
            MoveTo 965, 582
            LeftClick 1
            Delay 1000
            MoveTo 1095, 676
            LeftClick 1
        End If
    Loop Until intX > 0 And intY > 0
End Sub
i = inputbox("迴圈幾次", "提示")
Call 阿吉()
For i - 1
    Call Lib.第七史詩.CLEAR()
    Call Lib.第七史詩.確認()
    Delay 5000
    MoveTo 1490, 914
    LeftClick 1
    Call Lib.第七史詩.選擇隊伍()
    Call 阿吉()
Next
Call Lib.第七史詩.CLEAR()
MessageBox "END"
