@echo off 
set lang=EN
set PATH=%dosdir%
set NLSPATH=%dosdir%
set HELPPATH=%dosdir%
set temp=%dosdir%
set tmp=%dosdir%
SET BLASTER=A220 I5 D1 H5 P330
set DIRCMD=/P /OGN
if "%config%"=="4" goto end
lh doslfn 
REM SHSUCDX /QQ /D3
REM IF EXIST FDBOOTCD.ISO LH SHSUCDHD /Q /F:FDBOOTCD.ISO
REM LH C:\fdos\FDAPM APMDOS
REM if "%config%"=="2" LH C:\fdos\SHARE
REM LH DISPLAY CON=(EGA,,1)
REM NLSFUNC C:\FDOS\BIN\COUNTRY.SYS
REM MODE CON CP PREP=((858) A:\cpi\EGA.CPX)
REM MODE CON CP SEL=858
REM CHCP 858
REM LH KEYB US,,C:\FDOS\bin\KEY\US.KL  
REM C:\fdos\DEVLOAD /H /Q %dosdir%\uide.sys /D:FDCD0001 /S5
REM ShsuCDX /QQ /~ /D:?SHSU-CDH /D:?FDCD0001 /D:?FDCD0002 /D:?FDCD0003
REM mem /c /n
REM shsucdx /D
goto end
:end
SET autofile=C:\autoexec.bat
SET CFGFILE=C:\config.sys
alias reboot=C:\fdos\fdapm warmboot 
alias halt=C:\fdos\fdapm poweroff 
REM echo type HELP to get support on commands and navigation
REM echo.
REM echo Welcome to FreeDOS 1.1
REM echo.
LH C:\BIOS.exe
reboot
