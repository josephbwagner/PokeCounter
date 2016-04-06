#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir c:\  ; Ensures a consistent starting directory.

^!x:: ;Ctrl+Alt+x
    MsgBox % Count

^!z:: ;Ctrl+Alt+z

    IfNotExist, counter.txt
      MsgBox, counter.txt doesn't exist. Save a .txt file called 'counter' in C:\ with just 0 on the first line.

    FileName = counter.txt
    FileReadLine, Count, counter.txt, 1
    Count += 1
    file := FileOpen(FileName, "w")
    file.Write(Count)
    file.Close()
