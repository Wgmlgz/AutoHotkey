#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

nicknames := ["MEE6#4876", "a3mat#0882", "NullReferenceException#4841", "TORIN#0533", "/ZdoH<koynovli>#7669", "delari#1781", "Rusgy Cufu#9477", "lbvfKL#9103"]
delay(){
 sleep, 200
}
ping(name){
    If WinExist("ahk_exe discord.exe"){
		WinActivate
		delay()
		Send, ^{k}
        delay()
        SendRaw, %name%
        delay()
        Send, {Enter}
        delay()
        SendRaw, !!! Казино 666 !!! Это сообщение было отправленно случайному человеку при помощи моего макроса) 
        Send, {Enter}
        delay()
        SendRaw, https://tenor.com/view/osu-peppy-ohio-state-university-koaleahq-makaira-gif-15350939
        delay()
        Send, {Enter}
	}
    return
}
random(min, max){
    Random, rand, min, max
    Return, rand
}
!Enter::ping(nicknames[ random(1, nicknames.maxindex()  + 1)])