#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleInstance force

SetTitleMatchMode 2
If not WinExist("OneNote", "OneNote")
    run ONENOTE.EXE, C:\Program\Files\Microsoft Office\root\Office16



^!l::
BlockInput, On
send !p
send !sp
send !l
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