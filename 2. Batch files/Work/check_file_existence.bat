@echo off
setlocal enabledelayedexpansion

if "%~1" == "" (
  echo Имя каталога не указано.
  goto :eof
)

set /p filename="Введите имя файла для поиска: "

for %%d in (%*) do (
  if not exist "%%d" (
    echo Каталог "%%d" не существует.
  ) else (
    if exist "%%d\%filename%" (
      echo Файл "%filename%" существует в каталоге "%%d".
    ) else (
      echo Файл "%filename%" не существует в каталоге "%%d".
    )
  )
)
