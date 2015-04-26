@echo off

set AppVersionUID="63A4CAD3-88B5-4CCB-A1AC-AB386A26A1A8"
set DBVersionUID="1ACAAE7C-0375-4758-9E1A-BC63150D1272"
set ApplicationName="KCMS"
set Major="1"
set Minor="0"
set Patch="0"
set Hotfix="0"
set Description="KCMS.1.0.0"
set ReleasedDate="2013-06-26"

echo Validating database version for %ApplicationName%,Please wait...   
REM: Create KCMS_Version Table and SP
osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -i "../Tables/Common/dbo.Common_Version.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -i "../Tables/Common/dbo.Common_VersionChangeList.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -i "../StoredProcedures/Common/dbo.Usp_Common_Version_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -i "../StoredProcedures/Common/dbo.Usp_Common_VersionChangeList_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
@REM REM:AssignPermission
@REM osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " GRANT SELECT,INSERT, UPDATE, DELETE ON dbo.KCMS_Version TO %DbLoginID%"
@REM if %ERRORLEVEL% NEQ 0 goto errors
@REM osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " GRANT SELECT,INSERT, UPDATE, DELETE ON dbo.KCMS_VersionChangeList TO %DbLoginID%"
@REM if %ERRORLEVEL% NEQ 0 goto errors
@REM osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " GRANT EXECUTE ON dbo.Usp_Common_Version_Insert TO %DbLoginID%"
@REM if %ERRORLEVEL% NEQ 0 goto errors
@REM osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " GRANT EXECUTE ON dbo.Usp_Common_VersionChangeList_Insert TO %DbLoginID%"
@REM if %ERRORLEVEL% NEQ 0 goto errors


REM: Insert record to Common_Version Table (KCMS)
osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q "exec Usp_Common_Version_Insert '%DBVersionUID%','%ApplicationName%',%Major%,%Minor%,%Patch%,%Hotfix%,'%Description%','%ReleasedDate%'"
if %ERRORLEVEL% NEQ 0 goto done

SET Database=%DatabaseName%

REM: Insert record to Common_VersionChangeList Table (KCMS)
SET TableCount=0
FOR %%c IN (../Tables/**/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Table','%%c','%Database%'"
SET /a TableCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

SET SPCount=0
FOR %%c IN (../StoredProcedures/**/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done
																	  
FOR %%c IN (../StoredProcedures/CMS/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

FOR %%c IN (../StoredProcedures/PM/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done   
                                                           
FOR %%c IN (../StoredProcedures/BM/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done
                                                
FOR %%c IN (../StoredProcedures/RM/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

FOR %%c IN (../StoredProcedures/VM/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done      

FOR %%c IN (../StoredProcedures/PRM/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done   
  
FOR %%c IN (../StoredProcedures/Section/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done
                                          
FOR %%c IN (../StoredProcedures/UrlRedirection/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done    
                                       
FOR %%c IN (../StoredProcedures/Sitemap/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done
                                                                  
FOR %%c IN (../StoredProcedures/Navigation/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done         

FOR %%c IN (../StoredProcedures/MS/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

FOR %%c IN (../StoredProcedures/ATC/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done  
                                                            
FOR %%c IN (../StoredProcedures/TS/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done
                                                             
FOR %%c IN (../StoredProcedures/RT/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done        

FOR %%c IN (../StoredProcedures/CT/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

FOR %%c IN (../StoredProcedures/WTB/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done     
                                   
FOR %%c IN (../StoredProcedures/AT/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

FOR %%c IN (../StoredProcedures/CS/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done
                                                     
FOR %%c IN (../StoredProcedures/CS/**/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

FOR %%c IN (../StoredProcedures/Reports/*.sql) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Procedure','%%c','%Database%'"
SET /a SPCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

SET ViewCount=0
FOR %%c IN (../Views/*.VIW) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','View','%%c','%Database%'"
SET /a ViewCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

SET FunctionCount=0
FOR %%c IN (../Functions/*.UDF) DO (osql -S %DatabaseServer% -d %Database% -U %DbLoginID% -P %DbPassword% -b -Q "EXEC Usp_Common_VersionChangeList_Insert '%DBVersionUID%','Function','%%c','%Database%'"
SET /a FunctionCount+=1)
if %ERRORLEVEL% NEQ 0 goto done

echo Database version of %ApplicationName% validating has been completed.
echo The message of database is updated as follows: 
echo %Database% %TableCount% Tables
echo %Database% %SPCount% StoredProcedures
echo %Database% %ViewCount% Views
echo %Database% %FunctionCount% Functions
echo ----------------------------------------------------------
echo.

goto done
:done