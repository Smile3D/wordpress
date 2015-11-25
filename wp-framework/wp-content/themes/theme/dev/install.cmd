@echo off

echo Update environment...

echo Update Ruby...
call gem update --system

echo Update Ruby Sass...
call gem update sass

echo Update Ruby Compass...
call gem update compass

echo Update Grunt...
call npm update grunt-cli -g

echo Update project packages versions...
call npm install -g npm-check-updates
call ncu --upgradeAll

echo Install project packages ...
call npm install --save-dev

echo Update project packages content...
echo Global...
call npm update -g
echo Local...
call npm update --save
echo Local Dev...
call npm update --save-dev

echo Check updates...
call npm outdated

pause
