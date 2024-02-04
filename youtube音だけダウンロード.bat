@setlocal
@for /f "usebackq delims=" %%A in (`powershell -command "get-clipboard"`) do set URL=%%A

@set THIS_PATH=%~dp0\ffmpeg-master-latest-win64-gpl\bin
@set PARAM=%URL%
@set PARAM=%PARAM% -x -f "bestaudio"
@set PARAM=%PARAM% --audio-format mp3
@set PARAM=%PARAM% --audio-quality 0
@set PARAM=%PARAM% --ffmpeg-location "%THIS_PATH%"
@set PARAM=%PARAM% -o "E:\downloads\%%(title)s"
@set PARAM=%PARAM% --no-mtime
@set PARAM=%PARAM% --no-playlist

yt-dlp.exe %PARAM%
