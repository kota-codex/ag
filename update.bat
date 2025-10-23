@echo on
setlocal enabledelayedexpansion

for /f "usebackq delims=" %%u in ("repos.txt") do (
    set "url=%%u"
    if not "!url!"=="" (
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

endlocal
