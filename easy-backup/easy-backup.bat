@echo off
cls
setlocal

set sDest=config.ini

if exist "%sDest%" (
    for /f "usebackq tokens=1,2 eol=; delims==" %%i in ("%sDest%") do set %%i=%%j
) else (
set errorMsg=File config.ini doesn't exist.
goto :ProcessError
)

if defined Destination (
if defined Source (
set drive=%Destination%
set source=%Source%
goto :ProcessSuccess
) else (
set errorMsg=Not specified "source" attribute in config.ini
goto :ProcessError
)
) else (
set errorMsg=Not specified "destination" attribute in config.ini
goto :ProcessError
)

:EndProgramm
endlocal
pause
exit /b 0


:ProcessSuccess (
set backupFileName=%DATE:~0,2%.%DATE:~3,2%.%DATE:~8,2%_%time:~0,2%h%time:~3,2%m%time:~6,2%s%
set backupAttr=xcopy /s /c /d /e /h /i /r /k /y
%backupAttr% %source% "%drive%\%backupFileName%"
if defined WinRar (
%WinRar% A /r "Compressed" %source%
MOVE "Compressed.rar" "%drive%\%backupFileName%"
)
goto :EndProgramm
)

:ProcessError (
@echo **** **** ****
@echo %errorMsg%
@echo **** **** ****
goto :EndProgramm
)