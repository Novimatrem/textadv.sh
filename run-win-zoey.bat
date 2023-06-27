@echo off
cls
@title bash text adventure Launcher
echo bash text adventure
echo.
echo Required dependencies: 
echo Git Bash, Microsoft's modern 'Windows Terminal'.
echo.
echo When you're ready to start,
pause
echo.
echo Starting game...
cd /D "%~dp0"
@ping -n 3 -w 1000 0.0.0.1 > NUL 

wt C:\Users\%username%\AppData\Local\Microsoft\WindowsApps\wt.exe "C:\Program Files\Git\git-bash.exe" -c "bash textadv.sh"

exit
REM EOF
