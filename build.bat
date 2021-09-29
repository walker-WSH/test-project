@echo off

echo start building...................

devenv test.sln /Rebuild "Release|x64"
if not "%ERRORLEVEL%" == "0" echo building error!

echo build finished...................