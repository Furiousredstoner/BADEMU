set /p ROMFN= ./ROMs/
set /p ARGS= ARGs: 
"../lovec.exe" ./ ./ROMs/%ROMFN% %ARGS%
set /p DUMMY=Hit ENTER to continue...