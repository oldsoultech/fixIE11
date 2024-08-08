@echo off
setlocal

:: Ask the user for the Edge version
set /p edge_version="Enter the Edge version (e.g., 127.0.2651.86): "

:: Define the path to the BHO folder
set "bho_folder=C:\Program Files (x86)\Microsoft\Edge\Application\%edge_version%\BHO"

:: Check if the folder exists
if exist "%bho_folder%" (
    :: Rename the folder
    ren "%bho_folder%" "BHO.bak"
    echo Renamed BHO folder to BHO.bak
) else (
    echo BHO folder does not exist at the specified path.
)

:: Open Internet Explorer
start iexplore

endlocal
