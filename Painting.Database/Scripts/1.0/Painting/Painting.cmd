@echo off
REM: Command File Created by Microsoft Visual Database Tool
REM: Date Generated: 2011-6-27
REM: Authentication type: SQL Server
REM: Usage: CommandFilename [Server] [Database] [Login] [Password]

if '%1' == '' goto usage
if '%2' == '' goto usage
if '%3' == '' goto usage

if '%1' == '/?' goto usage
if '%1' == '-?' goto usage
if '%1' == '?' goto usage
if '%1' == '/help' goto usage

set [Server]=%1
set [Database]=%2
set [Login]=%3
set [Password]=%4
set [InitialLoginId]=%5
set [InitialAdminEmail]=%6

@echo 'Tables'             
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_ApplicationSetting.sql"
if %ERRORLEVEL% NEQ 0 goto errors     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Approver.sql"
if %ERRORLEVEL% NEQ 0 goto errors   
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Comment.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Country.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_State.sql"
if %ERRORLEVEL% NEQ 0 goto errors                         
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_OperationSystem.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Culture.sql"
if %ERRORLEVEL% NEQ 0 goto errors                     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Dictionary.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_EventLogType.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_EventLog.sql"
if %ERRORLEVEL% NEQ 0 goto errors    
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_EventLogArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_HistoryRecord.sql"
if %ERRORLEVEL% NEQ 0 goto errors    
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Media.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_LocalizationKey.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Localization.sql"
if %ERRORLEVEL% NEQ 0 goto errors           
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Menu.sql"
if %ERRORLEVEL% NEQ 0 goto errors     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_MetadataDataType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_MetadataGroup.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_MetadataUIControlType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Metadata.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_MetadataValue.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Notification.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_NotificationReceiver.sql"
if %ERRORLEVEL% NEQ 0 goto errors     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Office.sql"
if %ERRORLEVEL% NEQ 0 goto errors                                               
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Permission.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Region.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_RegionCountry.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Role.sql"
if %ERRORLEVEL% NEQ 0 goto errors        
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_RolePermission.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_SerialNumber.sql"
if %ERRORLEVEL% NEQ 0 goto errors        
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_User.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_UserRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_RegionUser.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_Version.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_VersionChangeList.sql"
if %ERRORLEVEL% NEQ 0 goto errors                         
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_EventLogTypeUser.sql"
if %ERRORLEVEL% NEQ 0 goto errors                         
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_CacheRemoteKey.sql"
if %ERRORLEVEL% NEQ 0 goto errors                         
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Common\dbo.Common_ExternalUser.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentItem.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentItemRelation.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentRegion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentCulture.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_RoleCulture.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_RoleRegion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentItemLocalization.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentItemLocalizationJob.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentItemLocalizationArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors   
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_LocalizedDictionary.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentAsset.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_ContentAssetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_WidgetLocation.sql"      
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_HtmlWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_HtmlWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_Page.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_PageArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_SiteSetting.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_DataType.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_DataTypeOperator.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_Layer.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_Rule.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_LayerRule.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CMS\dbo.CMS_LayerRuleGroup.sql"        
  if %ERRORLEVEL% NEQ 0 goto errors                                 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductCategoryWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductCategoryWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductSubCategoryWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductSubCategoryWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors            
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_Product.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_CustomField.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_CustomFieldValue.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductButton.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductGroup.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductImage.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors                     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_BusinessType.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_BusinessProductType.sql"
if %ERRORLEVEL% NEQ 0 goto errors        
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PM\dbo.PM_ProductFilter.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\BM\dbo.BM_Banner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\BM\dbo.BM_BannerCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\BM\dbo.BM_BannerToCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\BM\dbo.BM_BannerWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\BM\dbo.BM_BannerWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\BM\dbo.BM_BannerWidgetToBanner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\RM\dbo.RM_Review.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\RM\dbo.RM_ReviewWidget.sql"          
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\RM\dbo.RM_ReviewArchived.sql"          
if %ERRORLEVEL% NEQ 0 goto errors			 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\RM\dbo.RM_ReviewWidgetArchived.sql"          
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\VM\dbo.VM_Channel.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\VM\dbo.VM_Playlist.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\VM\dbo.VM_Video.sql"
if %ERRORLEVEL% NEQ 0 goto errors     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\VM\dbo.VM_VideoWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors    
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\VM\dbo.VM_VideoWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\VM\dbo.VM_CdnVideoRegion.sql" 
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PRM\dbo.PRM_PressReleaseLanguage.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PRM\dbo.PRM_PressRelease.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\PRM\dbo.PRM_PressReleaseArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContainer.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionObjectTemplate.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContentGroup.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors   
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContentGroupCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContentItemType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContentItem.sql"
if %ERRORLEVEL% NEQ 0 goto errors      
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTag.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContentItemTag.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionContentItemTagArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTitle.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionSubTitle.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionParagraph.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionCallToAction.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionVideo.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionImage.sql"
if %ERRORLEVEL% NEQ 0 goto errors    
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionList.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionListItems.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTableRowData.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTitleArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionSubTitleArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionParagraphArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionCallToActionArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionVideoArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionImageArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors    
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionListArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionListItemsArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTableArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Section\dbo.CMS_SectionTableRowDataArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\UrlRedirection\dbo.CMS_UrlRedirection.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Sitemap\dbo.CMS_Sitemap.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_Navigation.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_NavigationArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_NavigationLink.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_NavigationLinkArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_SidekickLink.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_SidekickLinkArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_SidekickLinkRegion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_SidekickLinkRegionArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_HeroImage.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_HeroImageArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\Navigation\dbo.CMS_HeroImageClickableArea.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_MemorySearchWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_MemorySearchWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_MemoryType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_ProductLineType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_SearchByProductLineWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors            
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_SearchResultTemplate.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\MS\dbo.MS_SearchByProductLineWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_Vendor.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_VendorBusinessType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_VendorBusinessTypeCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_VendorBusinessTypeSubCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_Campaign.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_CampaignVendor.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_ConfiguratorIntro.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\ATC\dbo.ATC_VendorBusinessTypeSubCategoryPartNumber.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_TechSupportLink.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_TechSupportLinkProduct.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_PartWorked.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_TechSupportForm.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_TechSupportFormActionRule.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_FAQCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_FAQ.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_FAQLocalization.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_FAQWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\TS\dbo.TS_FAQWidgetArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\RT\dbo.RT_Remarketing.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\RT\dbo.RT_RemarketingArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CT\dbo.CT_Article.sql"
if %ERRORLEVEL% NEQ 0 goto errors     
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CT\dbo.CT_ArticleWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CT\dbo.CT_ArticleArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors 
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CT\dbo.CT_Tag.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CT\dbo.CT_Comment.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CT\dbo.CT_SocialNetworkLink.sql"
if %ERRORLEVEL% NEQ 0 goto errors                        
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerCategoryArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerTypeArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_Partner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerRequestForm.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerToCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\WTB\dbo.WTB_PartnerToType.sql"
if %ERRORLEVEL% NEQ 0 goto errors  
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\AT\dbo.AT_Tracking.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_Server.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_PushableTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_DisplayField.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_TableRelationship.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_FieldRelationship.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_ExcludedColumn.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_PushHistory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_PushServerHistory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\CS\dbo.CS_PushedItem.sql"
if %ERRORLEVEL% NEQ 0 goto errors   
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Tables\FootNote\dbo.FN_FootNote.sql"
if %ERRORLEVEL% NEQ 0 goto errors
  
 
 
 

@echo 'Functions'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_DecodeHtml.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Escape.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_ApprovedRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_AuthorizeContentCulture.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_AuthorizeDisplayRegion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_BannerCategoryIntoLine.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_BannerToPageUsage.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_CheckCommunityArticleByTags.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_Common_Split.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_ContentItemLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_CorrespondingTombstoneTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_DisplayLanguageIntoLine.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_DisplayRegionIntoLine.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_FAQProductName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_IsIncrementIdentity.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_LatestContentItemLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_MaxRowversion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_Publisher.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_PublisherName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_SetIdentityString.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_ShowApprovedPage.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_TableFields.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_TableFieldString.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_TableFieldUpdateString.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_TablePrimaryKeys.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_Get_TombstoneTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "Functions\dbo.fn_IsExistsTableReferenced.sql"
if %ERRORLEVEL% NEQ 0 goto errors






@echo 'StoredProcedures'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_GetByTarget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_SelectByPath.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_SelectByPathAndSelector.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_SelectInvalid.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\AT\dbo.Usp_AT_Tracking_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_DeleteByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_CampaignVendor_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_SelectByCampaignCode.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_SelectVendorIdByCampaignCode.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Campaign_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_SelectByCampaignId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_ConfiguratorIntro_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_DeleteByTypeID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_SelectByVendorId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_SelectBySubCategoryID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategoryPartNumber_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_DeleteByCategoryID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_SelectByVendorId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessTypeSubCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_DeleteByVendorID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_SelectByVendorID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_VendorBusinessType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_SelectByBusinessTypeCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_SelectByPartNumber.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\ATC\dbo.Usp_ATC_Vendor_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_SelectByBannerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_SelectByBannerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerToCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_SelectByWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidgetToBanner_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_BannerWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_CheckUsedByWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_SelectByCategoryID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_SelectByImageType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_SelectByProduct.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\BM\dbo.Usp_BM_Banner_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAssetArchived_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_DeleteByContentItemId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentAsset_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_SelectByOwnerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_SelectCultures.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentCulture_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalizationArchived_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalizationArchived_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalizationArchived_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalizationArchived_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalizationArchived_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalizationArchived_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_DeleteByContentItem.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_DeleteByCutureId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_ExpireContents.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_GetAfftectedByLayer.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_GetPageUsing.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_PublishContents.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectAllLanguages.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectAllVersions.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectByContainer.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectByVersionNumber.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectCultures.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectDraft.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectLatest.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectPublished.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectReviewFrequencyDue.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_SelectReviewReminder.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_UpdateLocked.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemLocalization_UpdateReviewStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_DeleteByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_GetContentItem.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItemRelation_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_DeletePermanent.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_ExcludeInSitemap.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectByIds.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectByParentID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectByPath.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectByType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_SelectRootItem.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_UpdateItemParent.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_UpdateParent.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentItem_UpdateStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_CheckCountry.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_DeleteByItemId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectByRegion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectCountries.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_SelectRegions.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentRegion_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_ContentType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_SelectByDataType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataTypeOperator_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_DataType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_HtmlWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_DeleteByLayerId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_SelectByLayerId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRuleGroup_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_DeleteByLayerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_SelectByLayerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LayerRule_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_GetByStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Layer_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_SelectByContentTypeID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_LocalizedDictionary_UpdateBrandType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_ApprovalPagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_ExistsPagesCreatedByRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_SelectByContentItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Page_UpdateLastReviewNotified.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_DeleteByRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_SelectByRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_SelectUserLanguages.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleCulture_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_DeleteByRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_SelectAllRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_SelectByRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_SelectUserRegion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_RoleRegion_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Rule_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Rule_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Rule_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Rule_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Rule_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_Rule_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_SiteSetting_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_SiteSetting_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_SiteSetting_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_SiteSetting_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_SiteSetting_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_SiteSetting_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_UpdateLayerByWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_SelectByContentItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CMS\dbo.Usp_CMS_WidgetLocation_UpdateZone.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_SelectByKey.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ApplicationSetting_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_DeleteApprovers.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_GetApprover.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_GetApprovers.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_ReAssignApprover.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_UpdateApproverEmailStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Approver_UpdateApproverLastEmailStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_CacheRemoteKey_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_CacheRemoteKey_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_CacheRemoteKey_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_GetByOwnerTypeAndOwnerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Comment_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_SelectByCode.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_SelectByRegionID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Country_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_SelectByCode.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Culture_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_SelectByType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_SelectByTypeAndName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_SelectByTypeAndValue.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Dictionary_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_DeleteUser.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_SelectUser.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogTypeUser_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLogType_UpdateLastNotifiedDate.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_ArchiveAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_SelectWithNeedSendMailByTypeID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_EventLog_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_Active.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_ChangePassword.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_CreateAccount.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_SelectByEmailAddress.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_TrackLogin.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_UpdateAccount.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_ExternalUser_UpdateCode.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_DeleteByContentItemId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_DeleteByFieldName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_SelectByContentItemId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_HistoryRecord_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_SelectByKey.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_LocalizationKey_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_DeleteByKeyID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_SelectAllLocalizationStrings.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_SelectByKeyID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Localization_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_PaginationFiles.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_SelectChildren.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Media_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_SelectChildren.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Menu_UpdateName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataDataType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataGroup_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataUIControlType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_MetadataValue_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_SelectByMetadataGroupID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Metadata_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_SelectByNotification.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_NotificationReceiver_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Notification_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Notification_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Notification_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Notification_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Notification_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Notification_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Office_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Office_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Office_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Office_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Office_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Office_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_OperationSystem_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_GetByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Permission_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_DeleteByRegionID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_SelectByRegionID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionCountry_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_SelectByRegionID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RegionUser_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_GetByCountryCode.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Region_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_DeleteRolePermissions.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_GetRolePermissions.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_RolePermission_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_GetByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_GetByUserID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Role_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_State_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_DeleteByRoleID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_DeleteByUserID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_DeleteUserRole.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_UserRole_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_SelectByADLogin.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_SelectByLogin.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_SelectByRoleId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_User_UpdatePassword.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_VersionChangeList_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Version_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Common\dbo.Usp_Common_Version_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_AddRowVersion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_DeleteAtPushProcess.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_GetDisplayChanges.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_GetRelatedCurrentData.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_GetRelatedTombstoneData.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_SaveAtPushProcess.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_TableTypeCSArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_Generate_TriggerTombstoneTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Assist_InitializeDBforContentStaging.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_BuildRelationship.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DeleteAtRevertProcess.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DisplayField_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DisplayField_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DisplayField_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DisplayField_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DisplayField_SelectByPushableTableID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_DisplayField_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_ExcludedColumn_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_GetByTableRelationShip.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_SelectByTableRelationShip.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_FieldRelationship_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetAllTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetChangeContents.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetCurrentChanges.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetTableFields.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetTablePrimaryKeys.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetTablesWithoutCSArchived.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_GetTombstoneChanges.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_IsExistsTableReferenced.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushableTable_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_Revert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_SelectAllPushedFromVersion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_SelectByPushableTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_SelectByServer.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_SelectFrom.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushedItem_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_SelectByServer.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushHistory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_GetLast.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_Revert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_SelectByPushHistoryId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_SelectByServerId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_PushServerHistory_UpdateRevertFileStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Revert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_GetAdmin.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_UpdateRevertFileStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Server_UpdateSyncUpStatus.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_TableRelationship_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_Table_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_VersionHistory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_VersionHistory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_CS_VersionHistory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_Get_DBMaxRowversion.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CS\dbo.Usp_Get_TableDataSchema.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_ArticleWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_PaginationForFrontend.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectByContentItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectByWidgetSettings.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectCurrentAndPage.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectFeaturedArticle.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_SelectPopularArticles.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_UpCounter.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Article_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_SelectByArticle.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Comment_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_SelectByCulture.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_SocialNetworkLink_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_SelectArticleReferenced.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\CT\dbo.Usp_CT_Tag_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_SelectFootNotesByPath.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\FootNote\dbo.Usp_FN_FootNote_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemorySearchWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_GetChildren.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_MemoryType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_SelectByProductLineCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_ProductLineType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchByProductLineWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\MS\dbo.Usp_MS_SearchResultTemplate_SelectByCategory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_SelectByOwnerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImageClickableArea_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_HeroImage_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_SelectByOwnerID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_NavigationLink_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_Navigation_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_DeleteBySidekickLinkID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_SelectBySidekickLinkID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLinkRegion_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_SelectByContentItemLocalizationId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Navigation\dbo.Usp_CMS_SidekickLink_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_BusinessProductType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_BusinessProductType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_BusinessType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_BusinessType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_BusinessType_SelectByAddToCart.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomFieldValue_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_SelectByProduct.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_CustomField_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_SelectByOwner.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductButton_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategoryWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductFilter_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductFilter_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_SelectBySubCategoryID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductGroup_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductImage_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductImage_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductImage_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductImage_SelectByProduct.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductImage_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductImage_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductSubCategoryWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_ProductWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_PaginationForChooser.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PM\dbo.Usp_PM_Product_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressReleaseLanguage_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_SelectByPRLanguageAndYear.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_SelectLatest.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\PRM\dbo.Usp_PRM_PressRelease_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_ReviewWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_SelectByRelations.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RM\dbo.Usp_RM_Review_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Expire.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Notified.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\RT\dbo.Usp_RT_Remarketing_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCallToAction_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_SelectByOwnerWidget.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContainer_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_SelectByContentGroupID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroupCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_SelectByContainer.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_SelectByContainerForChangeHistory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_SelectReferenceGroups.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentGroup_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_DeleteByItemId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_SelectByContentItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemTag_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItemType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_GetBySectionWidgetID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_GetSourceLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_SelectByGroup.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_SelectByGroupForChangeHistory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_SelectReferencingItems.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionContentItem_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionImage_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_DeleteByItemIdAndLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_SelectByItemIdAndLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionListItem_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionList_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionObjectTemplate_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionParagraph_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionSubTitle_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_DeleteByItemIdAndLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_SelectByItemIdAndLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTableRowData_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTable_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTag_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionTitle_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_DeleteByItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionVideo_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_SelectTemplatePagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Section\dbo.Usp_CMS_SectionWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_DeleteByContentId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\Sitemap\dbo.Usp_CMS_Sitemap_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQLocalization_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectByContentItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectByLocalizationID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectByProductID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectByProductName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_FAQ_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_PartWorked_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportFormActionRule_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportForm_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportForm_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_SelectByContentItemID.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLinkProduct_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_SelectByProduct.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\TS\dbo.Usp_TS_TechSupportLink_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\UrlRedirection\dbo.Usp_CMS_UrlRedirection_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_DeleteAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_CdnVideoRegion_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_SelectByName.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Channel_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Playlist_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_VideoWidget_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_SelectByProduct.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\VM\dbo.Usp_VM_Video_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_GetAllPartnerCountry.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_SelectByCultureId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_SelectByRegionId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_SelectWidthPartnerByRegionId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerCategory_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerRequestForm_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerToCategory_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerToCategory_Save.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerToCategory_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerToType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerToType_Save.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerToType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_Archive.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_SelectByCultureId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_SelectByRegionId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_SelectHistoryRows.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_SelectWidthPartnerByRegionId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_PartnerType_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_Delete.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_Insert.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_Pagination.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_Select.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_SelectAll.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_SelectByCultureId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_SelectByRegionId.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_SelectHistoryColumns.sql"
if %ERRORLEVEL% NEQ 0 goto errors
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "StoredProcedures\WTB\dbo.Usp_WTB_Partner_Update.sql"
if %ERRORLEVEL% NEQ 0 goto errors









@echo 'InitialData'         

@echo 'Common_Culture.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Culture.sql" 
if %ERRORLEVEL% NEQ 0 goto errors   

@echo 'Common_Dictionary.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Dictionary.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_Country.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Country.sql" 
if %ERRORLEVEL% NEQ 0 goto errors     

@echo 'Common_Country.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_State.sql" 
if %ERRORLEVEL% NEQ 0 goto errors    

@echo 'Common_Country.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_OperationSystem.sql" 
if %ERRORLEVEL% NEQ 0 goto errors   

@echo 'Common_Region.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Region.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_RegionCountry.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_RegionCountry.sql" 
if %ERRORLEVEL% NEQ 0 goto errors   
 
@echo 'Common_Permission.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Permission.sql" 
if %ERRORLEVEL% NEQ 0 goto errors 

@echo 'Common_Role.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Role.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_RolePermission.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_RolePermission.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_Office.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Office.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_User.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_User.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo  Begining initialize adminstrator for "KingstonSite Application"
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -Q " UPDATE [dbo].[Common_User] SET [LogonName] = '%InitialLoginId%', [Email] = '%InitialAdminEmail%' WHERE UserID = 1"
@if errorlevel 1 goto :errors

@echo 'Common_UserRole.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_UserRole.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_Media.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Media.sql" 
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'Common_Menu.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Menu.sql" 
if %ERRORLEVEL% NEQ 0 goto errors  

@echo 'Common_EventLogType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_EventLogType.sql" 
if %ERRORLEVEL% NEQ 0 goto errors   

@echo 'Common_Localization.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_Localization.sql" 
if %ERRORLEVEL% NEQ 0 goto errors    

@echo 'Common_ApplicationSetting.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_ApplicationSetting.sql" 
if %ERRORLEVEL% NEQ 0 goto errors      

@echo 'CMS_SiteSetting.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_SiteSetting.sql" 
if %ERRORLEVEL% NEQ 0 goto errors      

@echo 'CMS_ContentType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_ContentType.sql" 
if %ERRORLEVEL% NEQ 0 goto errors      
                                                          
@echo 'CMS_ContentItem.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_ContentItem.sql" 
if %ERRORLEVEL% NEQ 0 goto errors  

@echo 'CMS_ContentItemLocalization.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_ContentItemLocalization.sql" 
if %ERRORLEVEL% NEQ 0 goto errors    

@echo 'CMS_DataType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_DataType.sql" 
if %ERRORLEVEL% NEQ 0 goto errors      

@echo 'CMS_DataTypeOperator.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_DataTypeOperator.sql" 
if %ERRORLEVEL% NEQ 0 goto errors     

@echo 'CMS_Rule.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_Rule.sql" 
if %ERRORLEVEL% NEQ 0 goto errors   

@echo 'CMS_ContentRegion.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_ContentRegion.sql" 
if %ERRORLEVEL% NEQ 0 goto errors    

@echo 'PRM_PressReleaseLanguage.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\PRM\PRM_PressReleaseLanguage.sql"
if %ERRORLEVEL% NEQ 0 goto errors      

@echo 'CMS_SectionContentItemType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_SectionContentItemType.sql"
if %ERRORLEVEL% NEQ 0 goto errors       
                                                           
@echo 'CMS_SectionObjectTemplate.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\CMS_SectionObjectTemplate.sql"
if %ERRORLEVEL% NEQ 0 goto errors       

@echo 'MS_MemoryType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\MS_MemoryType.sql"
if %ERRORLEVEL% NEQ 0 goto errors     

@echo 'MS_ProductLineType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\MS_ProductLineType.sql"
if %ERRORLEVEL% NEQ 0 goto errors    
 
@echo 'MS_SearchResultTemplate.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\MS_SearchResultTemplate.sql"
if %ERRORLEVEL% NEQ 0 goto errors
 
@echo 'PM_ProductFilter.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\PM_ProductFilter.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'PM_BusinessType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\PM_BusinessType.sql"
if %ERRORLEVEL% NEQ 0 goto errors 

@echo 'PM_BusinessProductType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\PM_BusinessProductType.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'TS_PartWorked.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\TS_PartWorked.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'TS_TechSupportFormActionRule.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\TS_TechSupportFormActionRule.sql"
if %ERRORLEVEL% NEQ 0 goto errors
                                                          
@echo 'Common_MetadataDataType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_MetadataDataType.sql"
if %ERRORLEVEL% NEQ 0 goto errors             
  
@echo 'Common_MetadataUIControlType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Common_MetadataUIControlType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
                                     
@echo 'WTB_PartnerType.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\WTB_PartnerType.sql"
if %ERRORLEVEL% NEQ 0 goto errors
                                
@echo 'CS_Server.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_Server.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_Table.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_Table.sql"
if %ERRORLEVEL% NEQ 0 goto errors
                                      
@echo 'CS_PushableTable.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_PushableTable.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_DisplayField.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_DisplayField.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_TableRelationship.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_TableRelationship.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_FieldRelationship.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_FieldRelationship.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_ExcludedColumn.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_ExcludedColumn.sql"
if %ERRORLEVEL% NEQ 0 goto errors

REM: Please keep the following item at the end.

@echo 'CS_InitializeDBforContentStaging.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_InitializeDBforContentStaging.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_PushHistory.sql'
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_PushHistory.sql"
if %ERRORLEVEL% NEQ 0 goto errors

@echo 'CS_PushServerHistory.sql'Common_User
osql -S %[Server]% -d %[Database]% -U %[Login]% -P %[Password]% -b -i "InitialData\Content Staging\CS_PushServerHistory.sql"
if %ERRORLEVEL% NEQ 0 goto errors
 
 


goto finish

REM: How to use screen
:usage
echo.
echo Usage: MyScript Server Database User [Password]
echo Server: the name of the target SQL Server
echo Database: the name of the target database
echo User: the login name on the target server
echo Password: the password for the login on the target server (optional)
echo.
echo Example: MyScript.cmd MainServer MainDatabase MyName MyPassword
echo.
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
:done
@echo on
