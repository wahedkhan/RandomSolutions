ECHO OFF
CLS
WMIC LOGICALDISK GET NAME
ECHO SELECT DRIVE TO LOCK: (Qualify Input as Drive, ex: "C:")

set INPUT=
set /P INPUT=Type input: %=%
echo Your input was: %INPUT%

WMIC LOGICALDISK GET | find "%INPUT%" >nul && (c:\Windows\System32\manage-bde.exe -LOCK "%INPUT%") || (ECHO NOT FOUND)
PAUSE