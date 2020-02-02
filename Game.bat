@echo off
title=COK Game
"C:\Program Files\Java\jdk1.7.0_67\bin\java" -cp "./;lib/*;lib/Jetty/*;extensions/__lib__/*" -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n -Dfile.encoding=UTF-8 com.smartfoxserver.v2.Main $1 $2  $3

exit