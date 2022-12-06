#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

^!z::
    WinGetTitle, title, A
    sleep 20
    MsgBox %title%
Return

!right::
    MouseMove, 10, 0, 100, R
    sleep 10
    mousemove, -10, 0, R
    return

!F4::
ExitApp

F5::
Reload
return

^!k::
mousegetpos, xpos, ypos
sleep 100
MsgBox, %xpos% %ypos%
return

^!j::
FormatTime, WochenTag, , WDay
MsgBox %WochenTag%
return

^!m::
SysGet sysge, Monitor, 
msgbox, %sysgeBottom%
return

!^n::
FormatTime, Uhrzeit, YYYYMMDDHH24MISS , H
FormatTime, Minuten, YYYYMMDDHH24MISS, m
msgbox %Uhrzeit% %Minuten% 
return

^!F6::
sleep 500
loop 100{
    Random number, 4900000000000, 4999999999999
    send %number%
    send {down}
    sleep 20
}
return



^!F7::
sleep 500
number := 1
loop 100{
    Random, random, 1, 16
    send %random%
    sleep 20
    send {down}
}
return

^!c::
mousegetpos xpos, ypos
sleep 3000
PixelGetColor color, xpos, ypos
msgbox %color%
mousemove xpos, ypos
return