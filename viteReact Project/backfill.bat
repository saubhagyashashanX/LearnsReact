@echo off
set DAYS=100

for /L %%i in (1,1,%DAYS%) do (
    echo // backfill %%i >> backfill.txt
    git add .
    git commit --date="%DATE% -%%i days" -m "Backfill commit %%i"
)

git push
pause
