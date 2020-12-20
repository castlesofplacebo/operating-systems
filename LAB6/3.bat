@echo off
net stop spooler
timeout /t 5
net start > updateFile.txt
call C:\Users\castl\LAB6\compare3.bat
net start spooler