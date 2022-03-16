#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

Run, fx-87DE X Emulator
sleep 800
send {down}
sleep 10
send {enter}
sleep 200
WinSet, AlwaysOnTop, 1, A
ExitApp
