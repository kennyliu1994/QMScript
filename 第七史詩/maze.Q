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
MacroID=1dfdfde6-9040-46df-bfb9-d867bc1a507d
Description=迷宮
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
Sub 普通1右下左上
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_E()
    MessageBox "帳篷"
    MessageBox "傳回中央"
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    MessageBox "END"
End Sub
Sub 普通迷宮2右上左下
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "帳篷"
    MessageBox "傳回中央"
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_S()
    MessageBox "END"
End Sub
Sub 普通迷宮3女王左上
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_E()
    MessageBox "帳篷"
    MessageBox "傳回中央"
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "END"
End Sub
Sub 地獄迷宮左上
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "帳篷"
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "關技能"
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "END"
End Sub
Sub 地獄迷宮右上
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "帳篷"
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_E()
    MessageBox "手動"
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "關技能"
    MessageBox "END"
End Sub
Sub 尼克斯特的聖所未完
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "傳送門"
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "商人"
    Call Lib.第七史詩.GO_E()
    MessageBox "傳送門"
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    MessageBox "手動"
    MessageBox "END"
End Sub
i = inputbox("普通1右下左上 1" & vbcr & "普通迷宮2右上左下 2" & vbcr & "普通迷宮3女王左上 3" & vbcr & "地獄迷宮左上 4" & vbcr & "地獄迷宮右上 5"& vbcr & "尼克斯特的聖所 6", "提示")
If i = 1 Then Call 普通1右下左上()
If i = 2 Then Call 普通迷宮2右上左下()
If i = 3 Then Call 普通迷宮3女王左上()
If i = 4 Then Call 地獄迷宮左上()
If i = 5 Then Call 地獄迷宮右上()
If i = 6 Then Call 尼克斯特的聖所()
