@setlocal enabledelayedexpansion

@if exist "%~dp0lld-link.exe" (
    set linker="%~dp0lld-link.exe"
) else (
    set linker="link.exe"
)

"%~dp0agc" -g -src "%~dp1." -src "%~dp0..\lib::https://aglang.org/wp-json/repo/v1" -start "%~n1" -O3 -o "%~n1" -L lnk.txt -D dep.txt
@if errorlevel 1 exit /b %errorlevel%

@set /p objs=<lnk.txt
%linker% /OUT:"%~n1.exe" /DEBUG /INCREMENTAL:NO %objs%
@if errorlevel 1 exit /b %errorlevel%

@set /p "deps="<dep.txt
@for %%f in (!deps!) do @copy /D "%%~f" ".\" >nul
