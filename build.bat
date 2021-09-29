set COVFILE=%~dp0wsh.cov
echo %COVFILE%

covclear -f %COVFILE%
covselect --no-banner --quiet --file "%COVFILE%" --add %~dp0
covselect --import BullseyeCoverageExclusions

cov01 --on --quiet --no-banner
::cd /d E:\NAVER-Document\bullseye\test
devenv test.sln /Rebuild "Release|x64"
cov01 --off --quiet --no-banner

%~dp0x64\Release\test.exe
%~dp0x64\Release\test2.exe
covhtml --file %COVFILE% output\

pause