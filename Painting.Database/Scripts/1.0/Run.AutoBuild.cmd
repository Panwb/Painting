@echo off
@REM ----------------------------------------------------------------------------------
@REM 
@REM This Batch file Upgrade Kingston Application
@REM
@REM ----------------------------------------------------------------------------------

set DatabaseServer=%1
set DatabaseName=%2
set DbLoginID=%3
set DbPassword=%4
set GrantToPrincipal_User=%5
rem set InitialAdminADAccount=%6
rem set InitialAdminADAccountEmail=PMDB_DEV@ktctest.com
set InitialLoginId=%6
set InitialAdminEmail=%7

REM: *********************************************************************************************
@echo Build database version and change list on "KingstonSite Application" %DatabaseServer%
cd KCMS\Commands
@echo  parameter %DatabaseServer% %DatabaseName% %DbLoginID% %DbPassword%
call VersionControl_SetUp.cmd %DatabaseServer% %DatabaseName% %DbLoginID% %DbPassword%
@if errorlevel 1 goto :errors

@echo  Begining upgrade Kingston Database for "KingstonSite Application"  
cd ..
call KCMS.cmd %DatabaseServer% %DatabaseName% %DbLoginID% %DbPassword% %InitialLoginId% %InitialAdminEmail%
@if errorlevel 1 goto :errors

@echo: Begining assign premission for Kingston database
cd Commands
call AssignPermission.cmd %DatabaseServer% %DatabaseName% %DbLoginID% %DbPassword% %GrantToPrincipal_User%
@if errorlevel 1 goto :errors

REM: *********************************************************************************************

goto finish

REM: error handler
:errors
@echo.
@echo WARNING! Error(s) were detected!
@echo --------------------------------
@echo Please evaluate the situation and, if needed,
@echo restart this command file. You may need to
@echo supply command parameters when executing
@echo this command file.
@echo.
pause
goto done

REM: finished execution
:finish
echo.
echo Script execution is complete!
pause
goto done
:done
@echo on