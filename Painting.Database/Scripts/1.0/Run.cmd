@echo off
@REM ----------------------------------------------------------------------------------
@REM 
@REM This Batch file Upgrade Kingston Application
@REM
@REM ----------------------------------------------------------------------------------

set DatabaseServer=sam
set DatabaseName=KingstonSiteDB
set DbLoginID=sa
set DbPassword=123
set GrantToPrincipal_User=KingstonSiteUser
set InitialLoginId=1086
set InitialAdminEmail=1086@Kingston.com

REM: *********************************************************************************************
@echo Build database version and change list on "KingstonSite Application"
cd KCMS\Commands
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