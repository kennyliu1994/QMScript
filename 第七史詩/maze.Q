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
Sub 普通迷宮右上
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_E()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "帳篷"
End Sub
Sub 普通迷宮左下
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_S()
    Call Lib.第七史詩.GO_S()
    MessageBox "END"
End Sub
Sub 普通迷宮女王
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_E()
    MessageBox "帳篷"
End Sub
Sub 普通迷宮左上
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_W()
    Call Lib.第七史詩.GO_RED_N()
    Call Lib.第七史詩.GO_RED_N()
    MessageBox "END"
End Sub
//Call 普通迷宮女王()
Call 普通迷宮左上()
