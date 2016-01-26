@echo off

set _pathLength=100

setlocal enabledelayedexpansion
for /F "tokens=1 delims=" %%i in ('dir /o:-n /b /s') do (
    set filename=%%i
    set part=!filename:~0,%_pathLength%!
    if !filename! NEQ !part! echo !filename!
)

@pause