MG_IniFileVersion=1.40
MG_8Dir=0
MG_ActiveAsTarget=0
MG_Interval=20
MG_AlwaysHook=0
MG_PrvntCtxtMenu=0
MG_Threshold=30
MG_LongThresholdX=400
MG_LongThresholdY=300
MG_LongThreshold=700
MG_TimeoutThreshold=12
MG_Timeout=0
MG_DGInterval=0
MG_TmReleaseTrigger=3
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=0
MG_DisableDefX2B=0
MG_UseNavi=0
MG_UseExNavi=3
MG_NaviInterval=10
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=100
MG_AdNaviSize=22
MG_AdNaviFont=メイリオ
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=3
MG_AdNaviRound=2
MG_AdNaviMargin=-1
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=0
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=255
MG_TrailWidth=3
MG_TrailStartMove=3
MG_TrailInterval=10
MG_ShowLogs=0
MG_LogPosition=4
MG_LogPosX=0
MG_LogPosY=0
MG_LogMax=20
MG_LogSizeW=400
MG_LogInterval=500
MG_LogFG=FFFFFF
MG_LogBG=000000
MG_LogTranspcy=100
MG_LogFontSize=10
MG_LogFont=MS UI Gothic
MG_EditCommand=
MG_HotkeyEnable=
MG_HotkeyNavi=
MG_HotkeyReload=
MG_ScriptEditor=
MG_TraySubmenu=1
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_FoldTarget=0
MG_DisableWarning=1
MG_ActvtExclud := []
MG_MaxLength=6
MG_Triggers=RB_MB
MG_SubTriggers=LB_WU_WD


Goto, MG_RB_End

MG_RB_Enable:
	if (!MG_AlwaysHook) {
		MG_RB_HookEnabled := Func("MG_IsHookEnabled_RB")
		Hotkey, If, % MG_RB_HookEnabled
	}
	Hotkey, *RButton, MG_RB_DownHotkey, On
	Hotkey, *RButton up, MG_RB_UpHotkey, On
	Hotkey, If
	MG_RB_Enabled := 1
return

MG_RB_Disable:
	Hotkey, *RButton, MG_RB_DownHotkey, Off
	Hotkey, *RButton up, MG_RB_UpHotkey, Off
	MG_RB_Enabled := 0
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	MG_SendButton("RB", "RButton", "Down")
return

MG_RB_Up:
	MG_SendButton("RB", "RButton", "Up")
return

MG_RB_Check:
	MG_CheckButton("RB", "RButton")
return

MG_RB_End:


Goto, MG_MB_End

MG_MB_Enable:
	if (!MG_AlwaysHook) {
		MG_MB_HookEnabled := Func("MG_IsHookEnabled_MB")
		Hotkey, If, % MG_MB_HookEnabled
	}
	Hotkey, *MButton, MG_MB_DownHotkey, On
	Hotkey, *MButton up, MG_MB_UpHotkey, On
	Hotkey, If
	MG_MB_Enabled := 1
return

MG_MB_Disable:
	Hotkey, *MButton, MG_MB_DownHotkey, Off
	Hotkey, *MButton up, MG_MB_UpHotkey, Off
	MG_MB_Enabled := 0
return

MG_MB_DownHotkey:
	MG_TriggerDown("MB")
return

MG_MB_UpHotkey:
	MG_TriggerUp("MB")
return

MG_MB_Down:
	if (!MG_DisableDefMB) {
		MG_SendButton("MB", "MButton", "Down")
	}
return

MG_MB_Up:
	if (!MG_DisableDefMB) {
		MG_SendButton("MB", "MButton", "Up")
	}
return

MG_MB_Check:
	MG_CheckButton("MB", "MButton")
return

MG_MB_End:


Goto, MG_LB_End

MG_LB_Enable:
	if (!MG_AlwaysHook) {
		MG_LB_HookEnabled := Func("MG_IsHookEnabled_LB")
		Hotkey, If, % MG_LB_HookEnabled
	}
	Hotkey, *LButton, MG_LB_DownHotkey, On
	Hotkey, *LButton up, MG_LB_UpHotkey, On
	Hotkey, If
	MG_LB_Enabled := 1
return

MG_LB_Disable:
	Hotkey, *LButton, MG_LB_DownHotkey, Off
	Hotkey, *LButton up, MG_LB_UpHotkey, Off
	MG_LB_Enabled := 0
return

MG_LB_DownHotkey:
	MG_TriggerDown("LB")
return

MG_LB_UpHotkey:
	MG_TriggerUp("LB")
return

MG_LB_Down:
	MG_SendButton("LB", "LButton", "Down")
return

MG_LB_Up:
	MG_SendButton("LB", "LButton", "Up")
return

MG_LB_Check:
	MG_CheckButton("LB", "LButton")
return

MG_LB_End:


Goto, MG_WU_End

MG_WU_Enable:
	if (!MG_AlwaysHook) {
		MG_WU_HookEnabled := Func("MG_IsHookEnabled_WU")
		Hotkey, If, % MG_WU_HookEnabled
	}
	Hotkey, *WheelUp, MG_WU_Hotkey, On
	Hotkey, If
	MG_WU_Enabled := 1
return

MG_WU_Disable:
	Hotkey, *WheelUp, MG_WU_Hotkey, Off
	MG_WU_Enabled := 0
return

MG_WU_Hotkey:
	MG_ButtonPress("WU")
return

MG_WU_Press:
	MG_SendButton("WU", "WheelUp")
return

MG_WU_End:


Goto, MG_WD_End

MG_WD_Enable:
	if (!MG_AlwaysHook) {
		MG_WD_HookEnabled := Func("MG_IsHookEnabled_WD")
		Hotkey, If, % MG_WD_HookEnabled
	}
	Hotkey, *WheelDown, MG_WD_Hotkey, On
	Hotkey, If
	MG_WD_Enabled := 1
return

MG_WD_Disable:
	Hotkey, *WheelDown, MG_WD_Hotkey, Off
	MG_WD_Enabled := 0
return

MG_WD_Hotkey:
	MG_ButtonPress("WD")
return

MG_WD_Press:
	MG_SendButton("WD", "WheelDown")
return

MG_WD_End:


Goto, MG_Config_End


MG_IsDisable() {
	global
	return ((MG_Exe="Unity.exe"))
}

MG_IsTarget1() {
	global
	return ((MG_Exe="iexplore.exe") || (MG_Exe="msedge.exe") || (MG_Exe="chrome.exe") || (MG_Exe="firefox.exe"))
}

MG_IsTarget2() {
	global
	return ((MG_WClass="CabinetWClass") || (MG_WClass="ExploreWClass") || (MG_WClass="Progman") || (MG_WClass="WorkerW"))
}

MG_IsTarget3() {
	global
	return (MG_IsTarget2() && ((MG_TreeListHitTest())))
}

MG_IsExDefault() {
	return (0)
}

MG_Gesture_RB_:
	if (!MG_IsExDefault()) {
		;アクティブ化
		MG_WinActivate()
		
	}
return

MG_GetAction_RB_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "アクティブ化"
	}
return

MG_Gesture_RB_DR_:
	if (!MG_IsExDefault()) {
		;Shift+Ctrl+Tを押す
		Send, +^t
	}
return

MG_GetAction_RB_DR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Shift+Ctrl+Tを押す"
	}
return

MG_Gesture_RB_DL_:
	if (!MG_IsExDefault()) {
		;Ctrl+Wを押す
		Send, ^w
	}
return

MG_GetAction_RB_DL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Ctrl+Wを押す"
	}
return

MG_Gesture_RB_L_:
	if (!MG_IsExDefault()) {
		;戻る
		Send, !{Left}
	}
return

MG_GetAction_RB_L_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "戻る"
	}
return

MG_Gesture_RB_R_:
	if (!MG_IsExDefault()) {
		;進む
		Send, !{Right}
	}
return

MG_GetAction_RB_R_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "進む"
	}
return

MG_Gesture_RB_WU_:
	if (!MG_IsExDefault()) {
		;Shift+Ctrl+Tabを押す
		Send, +^{Tab}
	}
return

MG_GetAction_RB_WU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Shift+Ctrl+Tabを押す"
	}
return

MG_Gesture_RB_WD_:
	if (!MG_IsExDefault()) {
		;Ctrl+Tabを押す
		Send, ^{Tab}
	}
return

MG_GetAction_RB_WD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Ctrl+Tabを押す"
	}
return

MG_Gesture_RB_LB_:
	if (!MG_IsExDefault()) {
		;Ctrl+左クリック
		Send, +^{LButton}
	}
return

MG_GetAction_RB_LB_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Ctrl+左クリック"
	}
return

MG_Gesture_RB_U_:
	if (!MG_IsExDefault()) {
		;Shift+Backspace;
		Send, !{Backspace}
		Sleep, 500
		Send, {Alt}
		Sleep, 500
		Send, {Alt}
		Sleep, 500
		Send, {Alt}
	}
return

MG_GetAction_RB_U_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Shift+Backspace;"
	}
return

MG_Gesture_RB_RD_:
	if (!MG_IsExDefault()) {
		;End
		Send, {End}
	}
return

MG_GetAction_RB_RD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "End"
	}
return

MG_Gesture_RB_LU_:
	if (!MG_IsExDefault()) {
		;Home
		Send, {Home}
	}
return

MG_GetAction_RB_LU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Home"
	}
return

MG_Gesture_MB_:
	if (!MG_IsExDefault()) {
		; Alt+W
		Send, !w
	}
return

MG_GetAction_MB_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := " Alt+W"
	}
return

MG_Gesture_RB_UD_:
	if (!MG_IsExDefault()) {
		;Ctrl+F5を押す
		Send, ^{F5}
	}
return

MG_GetAction_RB_UD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Ctrl+F5を押す"
	}
return


MG_IsHookEnabled_RB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_RB_Enabled && (MG_TriggerCount || (!MG_IsDisable())))
}

MG_IsHookEnabled_MB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_MB_Enabled && (MG_TriggerCount || (!MG_IsDisable())))
}

MG_IsHookEnabled_LB() {
	global
	return (MG_LB_Enabled && MG_TriggerCount)
}

MG_IsHookEnabled_WU() {
	global
	return (MG_WU_Enabled && MG_TriggerCount)
}

MG_IsHookEnabled_WD() {
	global
	return (MG_WD_Enabled && MG_TriggerCount)
}



MG_Config_end: