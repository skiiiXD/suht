@echo off
chcp 65001 > NUL 2>&1
IF "%1"=="new" (
    goto :new
)
IF "%1"=="init" (
    goto :init
)
IF "%1"=="help" (
    goto :help
)
IF "%1"=="version" (
    goto :version
)
IF "%1"=="delete" (
    goto :delete
)
IF "%1"=="" (
    goto :suht
)
echo %1 - unkown command!
echo Type suht help, to see all commands.
exit /b

:suht
echo.
echo To see all commands, type suht help
exit /b

:new
IF "%2"=="" (
    echo Error! No project name!
) ELSE (
    mkdir %2
    cd %2
    echo ^<!DOCTYPE html^> > index.html
    echo ^<html^> >> index.html
    echo     ^<head^> >> index.html
    echo         ^<title^>My Site!^</title^> >> index.html
    echo         ^<link rel="stylesheet" href="style.css"^> >> index.html
    echo     ^</head^> >> index.html
    echo     ^<body^> >> index.html
    echo         ^<h1^>Hello, World!^</h1^> >> index.html
    echo     ^</body^> >> index.html
    echo     ^<script src="main.js"^>^</script^> >> index.html
    echo ^</html^> >> index.html
    TYPE NUL >> style.css
    echo console.log("Hello, SUHT!"^) >> main.js
)
exit /b

:init

echo ^<!DOCTYPE html^> > index.html
echo ^<html^> >> index.html
echo     ^<head^> >> index.html
echo         ^<title^>My Site!^</title^> >> index.html
echo         ^<link rel="stylesheet" href="style.css"^> >> index.html
echo     ^</head^> >> index.html
echo     ^<body^> >> index.html
echo         ^<h1^>Hello, World!^</h1^> >> index.html
echo     ^</body^> >> index.html
echo     ^<script src="main.js"^>^</script^> >> index.html
echo ^</html^> >> index.html
TYPE NUL >> style.css
echo console.log("Hello, SUHT!") >> main.js

exit /b
:help
echo.
echo Version of SUHT 1.0.2
echo.
echo Type suht help, to see this.
echo Type suht init, to create files.
echo Type suht new [name], to create directory with files.
echo Type suht delete [name], to delete files created by SUHT.
echo Type suht version, to see your version of SUHT.
echo Type suht-update, to update your version of SUHT.
echo.
echo WARNING!! I DONT KNOW ENGLISH!!! can be errors in translate!

exit /b

:version
echo.
echo SUHT 1.0.2
echo super ultra html tool
exit /b

:delete
IF "%2"=="" (
    del /q index.html
    del /q style.css
    del /q main.js
) ELSE (
    cd %2
    del /q index.html
    del /q style.css
    del /q main.js
    cd..
)
exit /b