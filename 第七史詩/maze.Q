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
End Sub
//Call 普通1右下左上()
//Call 普通迷宮2右上左下()
Call 普通迷宮3女王左上()
//Call 地獄迷宮左上()
//Call 地獄迷宮右上()
