@echo off
set source="C:\Users\leeli\Pictures\Screenshots"
set target="C:\Users\leeli\Pictures\Camera Roll"

FOR /F "delims=" %%I IN ('DIR %source%\*.* /A:-D /O:-D /B') DO COPY %source%\"%%I" %target% & DEL %source%\"%%I" & echo %%I &  GOTO :END
:END
TIMEOUT 4

shell command:
cp -p $(find `pwd` -name `ls -Art <SOURCE> | tail -1`) <DESTINATION>