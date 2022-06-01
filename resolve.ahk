#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, force
SetTitleMatchMode, 2

F8::
InputBox value, Wie oft soll das wiederholt werden ? 
sleep 400
send ^b
loop %value%{
    send {Down}
    sleep 600
    send ^b
}
return

F9::
InputBox value, Wie oft soll das Löschen wiederholt werden ? 
sleep 1000
value2 = 2
loop %value%{
    sleep 400
    loop %value2%{
        send ^{right}
    }
    sleep 400
    send {BackSpace}
    value2 += 1
    OutputDebug, %value2%
}
return


