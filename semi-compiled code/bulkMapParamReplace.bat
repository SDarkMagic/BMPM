@echo off
call :treeProcess
goto :eof

:treeProcess
rem Do whatever you want here over the files of this subdir, for example:
for %%f in (*.smubin) do bmpm %%f LevelSensorMode 1 -t 0
for /D %%d in (*) do (
    cd %%d
    call :treeProcess
    cd ..
)
exit /b