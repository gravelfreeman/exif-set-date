@echo off
setlocal enabledelayedexpansion

REM Loop through all video files in the current directory
for %%f in (*.mp4 *.mov *.avi *.mkv) do (
    REM Get the Content Create Date
    for /f "delims=" %%d in ('exiftool -s -s -s -ContentCreateDate "%%f"') do (
        set content_create_date=%%d
    )

    REM Check if Content Create Date was found
    if defined content_create_date (
        REM Update all relevant date tags with the Content Create Date
        exiftool -P -overwrite_original ^
        -SubSecDateTimeOriginal="!content_create_date!" ^
        -DateTimeOriginal="!content_create_date!" ^
        -SubSecCreateDate="!content_create_date!" ^
        -CreationDate="!content_create_date!" ^
        -CreateDate="!content_create_date!" ^
        -MediaCreateDate="!content_create_date!" "%%f"
    ) else (
        echo No Content Create Date found for %%f
    )
)

endlocal
pause
