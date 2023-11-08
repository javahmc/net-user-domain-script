@echo off

	:findid

set /p name="Please enter the user ID: "

net user /domain %name%

set /p return="Would you like to search for another user ID? [Y / N] "

	IF %return%==y GOTO findid
	IF %return%==n GOTO end

	:end
	exit

