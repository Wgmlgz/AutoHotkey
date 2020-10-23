#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On


b::setName("redlay")
n::setName("lay")
m::
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos 
    Send, {LButton up}
    MouseClick, left, 1113, 87
    Send, redf
    Send, {Backspace}
    Send, {Enter}
    Send, {Enter}
    MouseMove, xpos, ypos 
return

,::setName("chick")

Left::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return

f12::
    Suspend
return

.::
    CoordMode, mouse, Screen
    Send, ^a
    MouseGetPos, xpos, ypos
    Sleep, 100
    MouseMove, 500, 500
    MouseMove, xpos, ypos
    MouseClickDrag, left, xpos, ypos, xpos + 10, ypos + 10
    MouseClickDrag, left, xpos, ypos, xpos - 10, ypos - 10
    Sleep, 100
    Send, ^c
    Sleep, 100
    MouseClick, left, 210, 1024
    Sleep, 100
    MouseMove, xpos, ypos
    Sleep, 1000
    Send, ^v
return  



setName(name){
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos 
    Send, {LButton up}
    MouseClick, left, 1113, 87
    Send, %name%    

    Send, {Enter}
    Send, {Enter}
    MouseMove, xpos, ypos 
}