set COVFILE=E:\NAVER-Document\bullseye\test\wsh.cov
echo %COVFILE%

covclear -f %COVFILE%
covselect --no-banner --quiet --file "%COVFILE%" --add %~dp0
covselect --import BullseyeCoverageExclusions

cov01 --on --quiet --no-banner
cd /d E:\NAVER-Document\bullseye\test
devenv test.sln /Rebuild "Debug|x64"
cov01 --off --quiet --no-banner

.\x64\Debug\test.exe
.\x64\Debug\test2.exe
covhtml --file %COVFILE% output\

pause