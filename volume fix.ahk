﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, force
SetTitleMatchMode, 2

Volume_Up::
ControlSend, , Volume_Up, opera
MsgBox, hi, hi, 2
Return

^f5::
Reload
Return

!F4::
ExitApp
return

^!h::
MsgBox % WinExist("A")
return