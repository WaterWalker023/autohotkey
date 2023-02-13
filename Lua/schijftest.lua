local file = io.open("C:\\Users\\Tomst\\OneDrive - Mediacollege Amsterdam\\Bureaublad\\ahk\\macrokeyboard v2\\demo.txt", "w") -- writing this string to a text file on disk is probably NOT the best method. Feel free to program something better!
--If you didn't put your AutoHotKey scripts into C:/AHK, Make sure to substitute the path that leads to your own "keypressed.txt" file, using the double backslashes.
--print("we are inside the text file")
file:write("hoi werkt dit nu wel? test")
file:flush() --"flush" means "save." Lol.
file:close()
