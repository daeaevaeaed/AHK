#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
MsgBox, 0, updated, updated, 0.2

^!k::
MouseGetPos, xpos, ypos
MsgBox 0, %xpos% %ypos%, %xpos% %ypos% w, 0.2
boolean := true
Clipboard := xpos ", " ypos
return




^!F8::
clipboard := % WinExist("A")
return


^F5::
reload
MsgBox, 0, updated, updated, 0.2
return

^F4::
ExitApp
return



XButton2::
send !{tab}
return

XButton1::
send {RWinDown}d{RWinUp}
return

Capslock::
if GetKeyState("shift")
    send {shift up}
else
    send {shift down}
return

#w::
InputBox, Program, Programme, Welches Programm möchtest du ausführen? YouTube: YT Word:word; OneNote:Onenote; VisualStudioCode:vsc; Adobe Acrobat Reader:ACR; AutoHotKey Hilfe: AHK help
if ErrorLevel
    return
else{
    MsgBox 0, %Program%, %program%, 0.1
    if(Prorgam =="YT" or Program == "yt"){
        Run C:\Users\David\AppData\Local\Programs\Opera\launcher.exe
        sleep 1000
        send youtube.com{enter}
    }
    If(Program == "VSC" or Program == "vsc"){
        run C:\Users\David\AppData\Local\Programs\Microsoft VS Code\Code.exe
        return
    }
    If(Program == "Word" or Program == "word"){
        run C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE
        return
        }
    If(Program == "Onenote" or Program == "onenote"){
        run C:\Users\David\Documents\AutoHotKey\onenote.ahk
        return
        }
    If(Program == "ACR" or Program == "acr" or Program == "adobe"){
        run C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe
        return
        }
    if(Program == "twitter"){
        RunWait, C:\Users\David\AppData\Local\Programs\Opera\launcher.exe
        counter := 0
        sleep 1000
        send ^t
        sleep 200
        send twitter.com {enter}
        return
    }
    if(Program == "insta"){
        RunWait, C:\Users\David\AppData\Local\Programs\Opera\launcher.exe
        counter := 0
        sleep 1000
        ;while(counter < 20){
        ;    send ^w
        ;    sleep 10
        ;    counter += 1
        ;}
        send ^t
        sleep 200
        send instagram.com {enter}
        return
    }
    if(Program == "AHK help" or Program == "ahk help" or Program == "h"){
        RunWait, C:\Program Files\AutoHotkey\AutoHotkey.exe
        return
    }
}
