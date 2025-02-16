@echo on
REM This script will run the System File Checker on each logical disk within the system
REM in order to search for and fix any corrupt system files to enhance system stability.
REM Must be run within elevated command prompt.

for /f "skip=1 tokens=1" %%d in ('wmic logicaldisk get caption') do (
  cd %%d
  sfc /scannow
)

pause
