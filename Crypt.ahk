﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


run VeraCrypt.lnk C:\Users\David\Documents\AutoHotKey
sleep 1000
MouseMove 156, 99
sleep 20
click
mousemove 525, 453
Click
exitApp
