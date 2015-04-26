 @echo off
 

echo Begining assgin the Execute permission of Store Procedure Common to User %GrantToPrincipal_User%
echo Please waiting...
SET AssginSPCount=0 
for %%f in (../StoredProcedures/Common/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result Common:affect %AssginSPCount% rows.
echo ------------------------------------------
echo.


echo Begining assgin the Execute permission of Store Procedure KCMS to User %GrantToPrincipal_User%
echo Please waiting... 
SET AssginSPCount=0   
for %%f in (../StoredProcedures/CMS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)   
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.



echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...
SET AssginSPCount=0 
for %%f in (../StoredProcedures/PM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   



echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...
SET AssginSPCount=0 
for %%f in (../StoredProcedures/BM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   


echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...
SET AssginSPCount=0 
for %%f in (../StoredProcedures/RM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                           
              
echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/VM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.    
                
echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/PRM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.    
                             
              
echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/Section/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.    

                      
              
echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/UrlRedirection/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
               
                      
              
echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/Sitemap/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   


echo Begining assgin the Execute permission of Store Procedure KCMS to User %GrantToPrincipal_User%
echo Please waiting... 
SET AssginSPCount=0   
for %%f in (../StoredProcedures/FootNote/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)   
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.
   

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/Navigation/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/MS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/ATC/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                                              
        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/TS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                                                  
        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/RT/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                                                    
        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/CT/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                 
                 

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/WTB/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                         

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/AT/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.   
                        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/CS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.                       

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...       
SET AssginSPCount=0   
for %%f in (../StoredProcedures/CS/**/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)       
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Purchase %AssginSPCount% rows.
echo ------------------------------------------
echo.                        

echo Begining assgin the Execute permission of Store Procedure Reports to User %GrantToPrincipal_User%
echo Please waiting...
SET AssginSPCount=0 
for %%f in (../StoredProcedures/Reports/*.*) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsProcedure') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginSPCount+=1)
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Reports %AssginSPCount% rows.
echo ------------------------------------------
echo.

echo Begining assgin the Execute permission of Generated Store Procedure Common to User %GrantToPrincipal_User%
echo Please waiting...
SET FileName="..\InitialData\Content Staging\CS_AssignPermissionForContentStaging.sql"
IF EXIST %FileName% sqlcmd -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -i %FileName%
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo ------------------------------------------
echo.

echo Begining assgin the Select permission of View to User %GrantToPrincipal_User%
echo Please waiting...
SET AssginViewCount=0
for %%f in (../Views/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsView') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginViewCount+=1)
if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Views %AssginViewCount% rows.
echo ------------------------------------------
echo.


echo Begining assgin the Select permission of Table to User %GrantToPrincipal_User%
echo Please waiting...     
SET AssginTableCount=0    
for %%f in (../Tables/CMS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)

for %%f in (../Tables/FootNote/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)

for %%f in (../Tables/Common/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)		  

for %%f in (../Tables/PM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)

for %%f in (../Tables/BM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)
                                                
for %%f in (../Tables/RM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)  
 
for %%f in (../Tables/VM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)     
                                  
for %%f in (../Tables/PRM/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   

for %%f in (../Tables/Section/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                               
for %%f in (../Tables/UrlRedirection/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                                    
for %%f in (../Tables/Sitemap/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                                
for %%f in (../Tables/Navigation/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)  

for %%f in (../Tables/MS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                         
for %%f in (../Tables/ATC/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)             
                                                  
for %%f in (../Tables/TS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                                        
for %%f in (../Tables/RT/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
               
for %%f in (../Tables/CT/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                                   
for %%f in (../Tables/WTB/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                  
for %%f in (../Tables/AT/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   
                                           
for %%f in (../Tables/CS/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTable') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginTableCount+=1)   


if %ERRORLEVEL% NEQ 0 goto errors
echo.
echo Assgin result:affect Tables %AssginTableCount% rows.
echo ------------------------------------------
echo.
             

echo Begining assgin the Select/Execute permission of Function to User %GrantToPrincipal_User%
echo Please waiting...   
SET AssginFunctionCount=0

REM ----Table Function for SELECT permission----------------------------------------------
for %%f in (../Functions/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsTableFunction') = 1 BEGIN GRANT SELECT ON %%~nf TO %GrantToPrincipal_User% END"
SET /a AssginFunctionCount+=1)

REM ----Scalar Function for EXEC permission----------------------------------------------
for %%f in (../Functions/*.sql) do (osql -S %DatabaseServer% -d %DatabaseName% -U %DbLoginID% -P %DbPassword% -b -Q " IF OBJECTPROPERTY(object_id(N'%%~nf'), N'IsScalarFunction') = 1 BEGIN GRANT EXEC ON %%~nf TO %GrantToPrincipal_User% END")
if %ERRORLEVEL% NEQ 0 goto errors

echo.
echo Assgin result:affect %AssginFunctionCount% rows.
echo ------------------------------------------
echo.

goto done

REM: error handler
:errors
echo.
echo WARNING! Error(s) were detected!
echo --------------------------------
echo Please evaluate the situation and, if needed,
echo restart this command file. You may need to
echo supply command parameters when executing
echo this command file.
echo.
pause
goto done

REM: finished execution
:finish
echo.
echo Script execution is complete!
pause
:done