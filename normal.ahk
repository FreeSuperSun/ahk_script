;设置大写锁定常关,数字常亮
SetCapslockState,AlwaysOff
SetNumlockState,AlwaysOn

;没有其它键按下单击大写锁定替换为Esc键
CapsLock::
    if (GetKeyState("Alt") = 0)
    {
        Send {Esc}
        return
    }
    
    ;没有其它键按下,大写锁定+hjkl为vim风格的移动键
    ;如果有alt键按下,则发送alt+移动(IDEA快捷键)
CapsLock & h::
    if (GetKeyState("Alt") = 1) 
    {
        Send !{Left}
        return
    }
    else 
    {
        Send {Left}
        return 
    }
    
CapsLock & j::
    if (GetKeyState("Alt") = 1) 
    {
        Send !{Down}
        return
    }
    else 
    {
        Send {Down}
        return 
    }
    
CapsLock & k::
    if (GetKeyState("Alt") = 1) 
    {
        Send !{Up}
        return
    }
    else 
    {
        Send {Up}
        return 
    }
    
CapsLock & l::
    if (GetKeyState("Alt") = 1) 
    {
        Send !{Right}
        return
    }
    else 
    {
        Send {Right}
        return 
    }