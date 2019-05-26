; When turned on(unsuspended), will kee autoclicking while mouse1 is held down

Suspend, on

$F1::Suspend

LButton::
    While GetKeyState("LButton","P")
        Send {LButton}
return