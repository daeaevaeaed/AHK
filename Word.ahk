#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2
#ifwinactive - Word
#SingleInstance force
#InstallKeybdHook

;Das Skript wird als ersatz zur Word verknüpfung genutzt, öffnet Word selbst und muss daher nicht selbst aktiviert werden
;Benötigt wird ein Volumen A, das kann ein USB stick, eine Festplatte oder ein Verakrypt Archiev sein
;sonst muss Z166 und 169 verändert werden
Run, WINWORD.exe, C:\Program Files\Microsoft Office\root\Office16, Maximize
MsgBox, 4, Auswahl, Normaler Unterricht ?
SysGet, AnzahlMonitore, MonitorPrimary
sleep 200
MouseGetPos, xpos, ypos
IfMsgBox No
    InputBox, FachNone, Fach, Falls lernen Fachname eingeben, sonst none
IfMsgBox, Yes
    FachNone := "none" ;Formatierung des Dokuments und Abfrage ob lernen oder UNterricht im Falle des UNterrichts einfach None eingeben
FormatTime, WochenTag, , WDay
mousemove 100, 100
click
send !H
sleep 20
send !y2
sleep 100
send !r
sleep 20
send !nz
sleep 20
send !e

^+s:: ;STRG + SHIFT + S
send ^s
return ;Normales Speichern wenn Dokumentname bereits benannt
;
^s:: ;STRG S
SysGet, AnzahlMonitore, MonitorPrimary
If(AnzahlMonitore=2){
    return
} ;erkennen, ob Hauptmonitor des Laptopmonitor ist, auf Grund von Mousemovement
mousegetpos xpos, ypos
WinMove, - word, speichern, 0, 0, 1920, 1200
FormatTime, WochenTag, , WDay
FormatTime, Uhrzeit, , H
FormatTime, Minuten, , m
FormatTime, Tag, , d
FormatTime, Monat, , M
FOrmatTime, Jahr, , yyyy
aktuellesFach := ""
SysGet sysge, Monitor
sleep 200
send !d
sleep 200
send !y2
sleep 200
send !o
Uhrzeitmalhundert := Uhrzeit*100
Zeitpunkt := Uhrzeitmalhundert + minuten ; Errechnet die Zeit zu 100/1000 zahlen letzte Zwei stellen sind Minuten und erste 1/2 sind Stunde, d.h. 12uhr 15 ist 1215
If(WochenTag=2){ ;Montag
    If Zeitpunkt between 940 and 1025
        aktuellesFach := "Deutsch"
    If Zeitpunkt between 1025 and 1115
        aktuellesFach := "Deutsch"
    If Zeitpunkt between 1125 and 1210
        aktuellesFach := "Mathe"
    If Zeitpunkt between 1215 and 1300
        aktuellesFach := "Mathe"
    If Zeitpunkt between 1545 and 1630 
        aktuellesFach := "Chemie"
    If Zeitpunkt between 1635 and 1720 
        aktuellesFach := "Chemie"
}
If(WochenTag=3){ ;Dienstag
    If Zeitpunkt between 940 and 1025
        aktuellesFach := "Englisch"
    If Zeitpunkt between 1025 and 1115
        aktuellesFach := "Englisch"
    If Zeitpunkt between 1125 and 1210
        aktuellesFach := "Geschichte"
    If Zeitpunkt between 1215 and 1300
        aktuellesFach := "Geschichte"
    If Zeitpunkt between 1400 and 1445
        aktuellesFach := "Physik"
    If Zeitpunkt between 1450 and 1535 
        aktuellesFach := "Physik"
    If Zeitpunkt between 1545 and 1630 
        aktuellesFach := "Informatik"
    If Zeitpunkt between 1635 and 1720 
        aktuellesFach := "Informatik"
}
if(WochenTag=4){ ;Mittwoch
    If Zeitpunkt between 745 and 921
        aktuellesFach := "Informatik"
    If Zeitpunkt between 940 and 1025
        aktuellesFach := "Englisch"
    If Zeitpunkt between 1030 and 1115
        aktuellesFach := "Deutsch"
    If Zeitpunkt between 1125 and 1300
        aktuellesFach := "Mathe"
}
If(WochenTag=5){ ;Donnerstag
    If Zeitpunkt between 745 and 830
        aktuellesFach := "Chemie"
    If Zeitpunkt between 835 and 920
        aktuellesFach := "Chemie"
    If Zeitpunkt between 940 and 1025
        aktuellesFach := "Erdkunde"
    If Zeitpunkt between 1025 and 1115
        aktuellesFach := "Erdkunde"
    If Zeitpunkt between 1125 and 1210
        aktuellesFach := "Religion"
    If Zeitpunkt between 1215 and 1300
        aktuellesFach := "Religion"
    If Zeitpunkt between 1400 and 1445
        aktuellesFach := "Vertiefende Mathematik"
    If Zeitpunkt between 1450 and 1535 
        aktuellesFach := "Vertiefende Mathematik"
    If Zeitpunkt between 1545 and 1630 
        aktuellesFach := "Musik"
    If Zeitpunkt between 1635 and 1720 
        aktuellesFach := "Musik"
}
if(WochenTag=6){ ;Freitag
    If Zeitpunkt between 745 and 830
        aktuellesFach := "Mathe"
    If Zeitpunkt between 835 and 920
        aktuellesFach := "Mathe"
    If Zeitpunkt between 940 and 1025
        aktuellesFach := "Englisch"
    If Zeitpunkt between 1025 and 1115
        aktuellesFach := "Englisch"
    If Zeitpunkt between 1125 and 1210
        aktuellesFach := "Physik"
    If Zeitpunkt between 1215 and 1300
        aktuellesFach := "Physik"
    If Zeitpunkt between 1400 and 1445
        aktuellesFach := "Sport"
    If Zeitpunkt between 1450 and 1535 
        aktuellesFach := "Sport"
}
WinMove, - word , automatisch speichern, 0, 0, 1920, 1200 ;Bewegt das Fenster zum Ursprung des Monitors und Formatiert es auf Maximale größe !!ACHTUNG!! Kommt auf den Monitor nicht an!!
if(%aktuellesFach% = "Sport" or %aktuellesFach% = "Physik" or %aktuellesFach% = "Englisch" or %aktuellesFach% = "Mathe" or %aktuellesFach% = "musik" or %aktuellesFach% "Religion" or %aktuellesFach% = "Erdkunde" or %aktuellesFach% "Chemie" or %aktuellesFach% = "Deutsch" or %aktuellesFach% = "Informatik" or %aktuellesFach% = "Geschichte"){
    WinMove, Speichern unter, Dokumente, 0, 0, 1920, 1200
    mousemove 1000, 60
    click
    if(FachNone = "none"){
        send  A:\%aktuellesFach% {enter}
        sleep 120
        mousemove 330, 990
        click
        send Unterrich am %Tag%.%Monat%.%Jahr%.docx ;FOrmatiert den Namen des Dokumentes zu Tag.Monat.Jahr.docx sofern beim Start des Scriptes none eingegeben wurde, sonst folgt die nächste Klammer
    }
    if(FachNone != "none"){
        send  A:\%FachNone% {enter} ;Öffnet das Vera crypt Archiv mit dem eingegebenen Fachname, benennt das Script nicht automatisch
        sleep 120
        mousemove 330, 990
        click
    }
}
mousemove xpos, ypos ;zurück zu ausgangsposition des Coursors
return

+^F5:: ;Neuladen des Scriptes
reload
return

+CapsLock::CapsLock 
CapsLock::shift ;Deaktivierung von Capslock es sei denn es wird Shift gedrückt

^+w:: ;Änderung des Aktuellen Faches falls das Script zwischen uNterrichtsende und Lernanfang nicht neu gestartet Wird
InputBox, FachNone, Fach, Falls lernen Fachname eingeben, sonst none
return

^!h::
return


