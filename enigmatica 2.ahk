#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

F11::
while(not GetKeyState("F10", "P")){
    sleep 75
    send {shift down}
    sleep 75
    click right
    sleep 75
    send {shift up}
    sleep 75
    click right
    sleep 75
    send f
    sleep 75
    click right
    sleep 75
    click right
    sleep 75
    click right
    sleep 75
    send f
}
return

^!F4::
ExitApp
return

^!F5::
Reload
return
