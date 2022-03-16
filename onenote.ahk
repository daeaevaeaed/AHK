#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleInstance force

SetTitleMatchMode 2
If not WinExist("OneNote ahk_class ApplicationFrameWindow", "OneNote")
    run ONENOTE.EXE, C:\Program\Files\Microsoft Office\root\Office16



^!l::
send !p
send !sp
send !l
mousemove 1775, 130
Click
sleep 300
send ^a
sleep 500
send {BackSpace}
return


^+u::
sleep 20
send !r
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

!F4::
ExitApp
return

^!F5::
reload
return