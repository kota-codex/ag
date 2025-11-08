@setlocal enabledelayedexpansion
@if exist "%~dp0lld-link.exe" (
   set linker="%~dp0lld-link.exe" /out:
) else (
   set linker="cl.exe" /Fe
)
@if exist "%~n1.obj" del "%~n1.obj"
"%~dp0agc" -src "%~dp1." -src "%~dp0..\lib" -start "%~n1" -O3 -o "%~n1.obj" -L lnk.txt -D dep.txt
@IF %ERRORLEVEL%==0 (
	set /p objs=<lnk.txt
	%linker%"%~n1.exe" !objs!
)
@IF %ERRORLEVEL%==0 (
	set /p "deps="<dep.txt
	for %%f in (!deps!) do (
		copy /D "%%~f" ".\" >nul
	)
)
"%~n1.exe"
@endlocal
