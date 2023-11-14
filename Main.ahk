;;; 基礎文法
;;; https://ashiatoblog.com/posts/pc/autohotkey/ahk3/
;;; See https://so-zou.jp/software/tool/system/auto-hot-key/hotkeys/
;;; See https://sites.google.com/site/autohotkeyjp/reference/KeyList

;;; キーボード押下テスト
;;; https://keytest.vn/en

#Persistent
#SingleInstance, Force
#NoEnv
#UseHook
#InstallKeybdHook
#InstallMouseHook
#HotkeyInterval, 2000
#MaxHotkeysPerInterval, 200
Process, Priority,, Realtime
SendMode, Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

Return

; カーソルがメニューに移動する挙動を無効にする
*~LAlt::Send, {Blind}{vk07}
*~RAlt::Send, {Blind}{vk07}

;;; Windowsキー
; Esc & F1::Send, {LWin Down}
; Esc & F1::LWin
; F1 & Esc::LWin

;;;capslockをctrlへ変更
;;;CapsLock::Ctrl
;;;sc03a::Ctrl

;;; 常に書式なしでペースト
;;;^v::Send, ^+v

;;; macと同じようにコピペする
!c::Send, ^c
;;; !v::Send, ^+v
!v::Send, ^v

; <!n::MsgBox, semicolon
; Esc & F1::MsgBox, debug

;;; タブ切り替えを Ctrl + (Shift +)Tab から Alt + ←/→ に.
<!Left::Send, {Ctrl down}{Shift down}{Tab}{Ctrl up}{Shift up}
<!Right::Send, {Ctrl down}{Tab}{Ctrl up}

;;; アローキー無しのタブ切り替え
<^!h::Send, {Ctrl down}{Shift down}{Tab}{Ctrl up}{Shift up}
<^!l::Send, {Ctrl down}{Tab}{Ctrl up}

;;; Ctrl + Spaceで検索ボックス呼び出し
; <^Space::Send, #s

;;; Clibor呼び出し
;;; !Space::MsgBox, Clibor

;;; ;;; for JP keymap
;;; ;;; <^`::Send, {Enter}
;;; <^`;::Send, {Enter}
;;; <^p::Send, {Backspace}
;;; <^@::Send, {Delete}
;;; <^h::Send, {Left}
;;; <^l::Send, {Right}
;;; <^k::Send, {Up}
;;; <^j::Send, {Down}
;;; <^[::Send, {Esc}
;;; <^f::Send, {PgDn}
;;; <^b::Send, {PgUp}

;;; for US keymap
<^`;::Send, {Enter}

; 左コントロールキー2連打でEnter
LCtrl::
  KeyWait, LCtrl, T0.4
  If ErrorLevel
  {
    send, {LCtrl}
    return
  }
  If A_TickCount < %LCtlDouble%
  {
    send, {Enter}
    EscDouble = 0
  }
  Else
  {
    LCtlDouble = %A_TickCount%
    LCtlDouble += 400
  }
Return

; ; Escキー2連打でDelete
; Esc::
;   KeyWait, Esc, T0.4
;   if ErrorLevel
;   {
;     send, {Esc}
;     return
;   }
;   if A_TickCount < %EscDouble%
;   {
;     send, {Delete}
;     EscDouble = 0
;   }
;   else
;   {
;     EscDouble = %A_TickCount%
;     EscDouble += 400
;   }
; return

; ; バッククォートキー2連打でBackSpace
; `;::
;   KeyWait, `, T0.4
;   if ErrorLevel
;   {
;     send, `;
;     return
;   }
;   if A_TickCount < %BqDouble%
;   {
;     send, {BS}
;     BqDouble = 0
;   }
;   else
;   {
;     BqDouble = %A_TickCount%
;     BqDouble += 400
;   }
; return

<^p::Send, {Backspace}
;;; <^@::Send, {Delete}
<^1::Send, {Delete}
<^h::Send, {Left}
<^l::Send, {Right}
<^k::Send, {Up}
<^j::Send, {Down}
;;; <^[::Send, {Esc}
<^[::
  Send, {Esc}
  Send, {vkF2sc}{vkF3sc}
Return

<^f::Send, {PgDn}
<^b::Send, {PgUp}

; 左Altキーが単独で押された場合、IMEをオフにする
~LAlt Up::
If (A_PriorKey = "LAlt") {
    ; Send, {Blind}{vk07}
    Send, {vkF2sc}{vkF3sc}
}
Return

; 右Altキーが単独で押された場合、IMEをオンにする
~RAlt Up::
If (A_PriorKey = "RAlt") {
    ; Send, {Blind}{vk07}
    Send, {vkF2sc}
}
Return

/*
~g up::
  Input, jout, I T0.1 V L1, {g}
  if(ErrorLevel == "EndKey:G"){
    SendInput, {BackSpace 2}
    ;;; MsgBox, gg
    Send, {Home}
  }
Return
*/
;;; >+b::Send, {End}

;;; ^`;::MsgBox, semicolon