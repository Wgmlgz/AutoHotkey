﻿#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On 


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
forward(){
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos
    MouseClick, left, 210, 1024
    MouseMove, xpos, ypos
}

#IfWinActive Neurospectr Object Markup

n::setName("redlay")
m::Delete


.::setName("road")

Down::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return

f12::
    Suspend
return

,::forward()


#IfWinActive Label for the rectangle

,::forward()
m::setName("lay")
b::
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

.::setName("road")

Down::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return

f12::
    Suspend
return
