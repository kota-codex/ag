@echo on
setlocal enabledelayedexpansion

for /f "usebackq delims=" %%u in ("repos.txt") do (
    set "url=%%u"
    if not "!url!"=="" (
        if not "!url:~0,1!"=="#" (
            for %%i in ("!url!") do set "p=%%~ni"
            if exist "!p!\.git" (
                echo fetching !p!...
                pushd "!p!" >nul
                git fetch
                popd >nul
            ) else (
                echo cloning !p!...
                git clone "!url!" "!p!"
            )
            if exist "!p!\update.bat" (
                echo Recursively updating !p!
                pushd "!p!" >nul
                call update.bat
                popd >nul
            )
        )
    )
)

endlocal

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set VS_ARCH=x64
) else if "%PROCESSOR_ARCHITECTURE%"=="ARM64" (
    set VS_ARCH=arm64
) else (
    echo ERROR: Unsupported architecture "%PROCESSOR_ARCHITECTURE%"!
    exit /b 1
)
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=%VS_ARCH%
start code ag.code-workspace
