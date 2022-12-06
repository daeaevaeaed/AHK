#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

SetTitleMatchMode 2

; while(true){
;     FormatTime, time, hh
;     if time == 5:
^f5::
        sleep 4000
        send #2
        sleep 3000
        send ^t
        sleep 1000
        send whats my ip {enter}
        sleep 2000
        mousemove 372, 442
        click 3
        sleep 1000
        send {shift up}
        send {control down}
        sleep 300
        send c
        sleep 300
        send {control up}
        sleep 2000
        send ^w
        sleep 400
        WinClose, A
        ; clipboard := "192.168.5.29"
        ; MsgBox, %Clipboard%
        sleep 3000
        FormatTime, time, hms
        FileAppend, %time%, C:\Users\fisch\Documents\ahk\spam folder\ip log.txt
        FileAppend, "           ", C:\Users\fisch\Documents\ahk\spam folder\ip log.txt
        FileAppend, %clipboard%, C:\Users\fisch\Documents\ahk\spam folder\ip log.txt

        return
; }