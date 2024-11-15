set "FileName=%1"
set "FileUrl=%2"
set "OutDir=%3"
set "CurrentDir=%~dp0"
set "TempDir=%CurrentDir%temp\"

if not exist "%TempDir%" (
    md %TempDir%
)

"%CurrentDir%\curl\curl.exe" -k -o %TempDir%\%FileName%.gz %FileUrl%
"%CurrentDir%\7z\7z.exe" x %TempDir%\%FileName%.gz -o%TempDir% -y
"%CurrentDir%\7z\7z.exe" x %TempDir%\%FileName% -o%OutDir% -y
