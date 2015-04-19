Config { font = "xft:Bitstream Vera Sans Mono:size=9:bold:antialias=true"
       , bgColor = "#000000"
       , fgColor = "grey"
       , position = Bottom
       , hideOnStart = True
       , allDesktops = True
       , commands = [ Run StdinReader
           , Run MultiCpu ["-t", "CPU: <autototal>%", "-L", "3", "-H", "50", "--normal", "green", "--high", "red"] 10
           , Run Memory ["-t", "Mem: <usedratio>%"] 10
           , Run Network "eth0" ["-L", "0", "-H", "70", "--normal", "green", "--high", "red"] 10
           , Run Network "wlan0" ["-L", "0", "-H", "32", "--normal", "green", "--high", "red"] 10
           , Run Battery ["-t", "<acstatus>: <left>%", "--", "-c", "chage_full", "-O", "AC", "-o", "Bat", "-h", "green", "-l", "red"] 10
           , Run Date "%a %_d » %H:%M" "date" 10
       ]
       -- Character used to wrape variables in the templates
       , sepChar = "%"
       -- Separator for aligning elements in the template
       , alignSep = "}{"
       , template = " %StdinReader%}<fc=grey>%multicpu% ~ %memory% ~ %battery% ~ %eth0% : %wlan0%</fc>{<fc=#EE9A00>%date%</fc> "
       }
