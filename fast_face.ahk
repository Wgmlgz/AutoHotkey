#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On 


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

    Send, {Enter}
    Send, {Enter}
    MouseMove, xpos, ypos 
}
#IfWinActive Neurospectr Object Markup

.::setName("face")
,::forward()
Down::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return

#IfWinActive Label for the rectangle

.::setName("face")
,::forward()
Down::LButton
RButton::
    Send, {Tab}
    Send, {Enter}
return
