import win32com.client
import keyboard
shell = win32com.client.Dispatch("WScript.Shell")
#shell.Run("C:\\Users\\Tomst\\OneDrive - Mediacollege Amsterdam\\Bureaublad\\ahk\\sounds\\Rick Astley - Never Gonna Give You Up (Official Music Video).mp4")
chr97: bool([False])

while True:
        if keyboard.read_key() == chr(97):
            if chr97 == False:
                print("You pressed a")
                chr97: True
            else:
                chr97: False
            
            #shell.SendKeys("^o", 1)
            print("hello world")

#
#aaaaa
#aaaaaa
#aaa