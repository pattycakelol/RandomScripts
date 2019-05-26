; When hotkey is toggled, key is spammed

#MaxThreadsPerHotkey 2

$F2::
    Toggle := !Toggle
    while Toggle
    {
        Send, x
        Sleep, 1
    }
return