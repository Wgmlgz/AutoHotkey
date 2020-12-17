#NoEnv
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

renameAndForward(name){
    send, %name%
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos
    MouseClick, left, 210, 1024
    MouseMove, xpos, ypos
}
forward(){
    CoordMode, mouse, Screen
    MouseGetPos, xpos, ypos
    MouseClick, left, 210, 1024
    MouseMove, xpos, ypos
}
vibeCheck(){
    MouseClickDrag, left, 1128, 60, 1128, 100
}
vibeCheckOff(){
    MouseClickDrag, left, 1128, 100, 1128, 60
}
#IfWinActive Neurospectr Object Markup

n::renameAndForward(3)
m::renameAndForward(2)
,::renameAndForward(1)
.::renameAndForward(0)
Down::forward()
b::
  Send, 1
return






#IfWinActive Label for the rectangle

