#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^F6::
InputBox, loop
Loop %loop%{
send {home}
    mousemove 1792, 585
    click
    mousemove 1571, 789
    click
    mousemove 884, 408
    click
    send {Down}
    sleep 50
    send {Down}
}
Return

!F4::
ExitApp
return

^F5::
reload
return