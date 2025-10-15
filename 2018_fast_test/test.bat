@echo off
setlocal enabledelayedexpansion

set "BASE_PATH=%PATH%"

for %%V in (2018sp5 2019sp6 2020sp7 2021sp8 2022sp8 2023sp5 2024sp6 2025sp4) do (
    set "VECTORCAST_DIR=C:\vcast\%%V"
    set "PATH=!VECTORCAST_DIR!;!BASE_PATH!"

    git clean -fxd
    git checkout HEAD 2018_fast_test.vcm tutorial\c\manager.c

    echo Running manage from !VECTORCAST_DIR!
    manage -p 2018_fast_test --status
)

endlocal
