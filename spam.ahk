#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

!F4::
ExitApp 
return

^F5::
Reload
return

F12::
InputBox, delay, delay
InputBox, Text
while(true){
    Random, wdh, 1, 1
    Loop, %wdh%
        send %text%
    sleep %delay%
    send {Enter}
    if GetKeyState("F10", "P"){
        return
    }
}