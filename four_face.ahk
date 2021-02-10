;#NoEnv
SendMode Input
;#InstallKeybdHook
;#UseHook On 

back(){
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos
    MouseClick, left, 150, 1024
    MouseMove, xpos, ypos
}
forward(){
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos
    MouseClick, left, 210, 1024
    MouseMove, xpos, ypos
}
setName(name){
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos 
    Send, {LButton up}
    MouseClick, left, 1113, 87
    Send, %name%
    Send, "
    Send, {BackSpace}
    Send, {Enter}
    Send, {Enter}
    Sleep, 100
    Send, {Enter}
    MouseMove, xpos, ypos 
}
#IfWinActive Neurospectr Object Markup
b::back()
n::setName("female")
m::setName("male")
,::setName("female_mask")
.::setName("male_mask")
Up::forward()
Down::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return

#IfWinActive Label for the rectangle

n::setName("female")
m::setName("male")
,::setName("female_mask")
.::setName("male_mask")
Down::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return
