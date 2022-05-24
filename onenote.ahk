#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleInstance force
SetKeyDelay, 30, 10

SetTitleMatchMode 2
If not WinExist("OneNote", "OneNote")
    run ONENOTE.EXE, C:\Program\Files\Microsoft Office\root\Office16



^!l::
BlockInput, On
sleep 20
send !p
sleep 20
send !sp
sleep 20
send !l
sleep 20
BlockInput, Off
return


^+u::
sleep 20
send !r
sleep 20
send !3
return

^+k::
sleep 20
send !r
send !2
return

^+f::
sleep 20
send !r
send !1
return


^!F5::
reload
return

^!m::
BlockInput, On
send !f
sleep 20
send !w
BlockInput, Off
return


^!a::
MouseGetPos, xpos, ypos
BlockInput On
send !f
mousemove 541, 121
sleep 20
Click
sleep 20
mousemove xpos, ypos
sleep 30
send {esc}
sleep 20
BlockInput Off
return