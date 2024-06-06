set envVar=%1
set appVar=%2
set destEnv="uat"
set destBaseFolder=D:\Ultimo
set srcPath=%CD%\UltimoDeployPackage

echo %appVar%

set applicationServiceName=""
set applicationBaseDir=""

set logServiceName=""
set logBaseDir=""

set ssoServiceName=""
set ssoBaseDir=""

set fileServiceName=""
set fileBaseDir=""
 
set notificationServiceName=""
set notificationBaseDir=""
 
set qrcodeServiceName=""
set qrcodeBaseDir=""
 
set faceboxServiceName=""
set faceboxBaseDir=""
 
set faceparkServiceName=""
set faceParkBaseDir=""
 
set amagServiceName=""
set amagBaseDir=""
 
set agoraServiceName=""
set agoraBaseDir=""
 
set macServiceName=""
set macBaseDir=""
 
set avigilonServiceName=""
set avigilonBaseDir=""
 
set vtrackServiceName=""
set vtrackBaseDir=""
 
set landlordServiceName=""
set LandlordBaseDir=""
 
set deskeraServiceName=""
set deskeraBaseDir=""

set gicWorkAppServiceName=""
set gicWorkAppBaseDir=""
 
set webUIBaseDir=""
 
set localHostName=""
 
set hour=%time:~0,2%
If "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set today=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
 
IF "%envVar%"=="uat" (
    set destBaseFolder=D:\Ultimo
    set applicationServiceName="Ultimo.Application.Service"
    set logServiceName="Ultimo.Log.Service"
    set ssoServiceName="Ultimo.SSO.Service"
    set fileServiceName="Ultimo.File.Service"
    set notificationServiceName="Ultimo.Notification.Service"
    set qrcodeServiceName="Ultimo.QRCode.Service"
    set faceboxServiceName="Ultimo.FRServerForCamera.Integration.Service"
    set faceparkServiceName="Ultimo.FRServerForTerminal.Integration.Service"
    set amagServiceName="Ultimo.AMAG.Integration.Service"
    set agoraServiceName="Ultimo.Agora.Integration.Service"
    set macServiceName="Ultimo.MAC.Service"
    set avigilonServiceName="Ultimo.Avigilon.Service"
    set vtrackServiceName="Ultimo.VTRack.Service"
    set landlordServiceName="Ultimo.Landlord.Service"
    set deskeraServiceName="Ultimo.Deskera.Integration.Service"
    set gicWorkAppServiceName="Ultimo.GICWorkApp.Integration.Service"
 
    set applicationBaseDir=Ultimo.Application.Service
    set logBaseDir=Ultimo.Log.Service
    set ssoBaseDir=Ultimo.SSO.Service
    set fileBaseDir=Ultimo.File.Service
    set notificationBaseDir=Ultimo.Notification.Service
    set qrcodeBaseDir=Ultimo.QRCode.Service
    set faceboxBaseDir=Ultimo.FRServerForCamera.Integration.Service
    set faceParkBaseDir=Ultimo.FRServerForTerminal.Integration.Service
    set amagBaseDir=Ultimo.AMAG.Integration.Service
    set agoraBaseDir=Ultimo.Agora.Integration.Service
    set macBaseDir=Ultimo.MAC.Service
    set webUIBaseDir=Ultimo.IntranetWeb.Service
    set avigilonBaseDir=Ultimo.Avigilon.Integration.Service
    set vtrackBaseDir=Ultimo.VTRack.Integration.Service
    set landlordBaseDir=Ultimo.Landlord.Service
    set deskeraBaseDir=Ultimo.Deskera.Integration.Service
    set gicWorkAppBaseDir=Ultimo.GICWorkApp.Integration.Service
)
if "%envVar%"=="prod" (
    for /f %%a in ('hostname') do set localHostName=%%a
    echo local host name is %localHostName%
   
    set destBaseFolder=D:\Ultimo\Services
    set applicationServiceName="Ultimo.Application"
    set logServiceName="Ultimo.Log.Service"
    set ssoServiceName="Ultimo.SSO.Service"
    set fileServiceName="Ultimo.File.Service"
    set notificationServiceName="Ultimo.Notification.Service"
    set qrcodeServiceName="Ultimo.QRCode.Service"
    set faceboxServiceName="Ultimo.FRServerForCamera.Integration.Service"
    set faceparkServiceName="Ultimo.FRServerForTerminal.Integration.Service"
    set amagServiceName="Ultimo.AMAG.Integration.Service"
    set agoraServiceName="Ultimo.Agora.Integration.Service"
    set macServiceName="Ultimo.MAC.Service"
    set vtrackServiceName="Ultimo.VTRack.Integration.Service"
    set landlordServiceName="Ultimo.Landlord.Service"
    set deskeraServiceName="Ultimo.Deskera.Integration.Service"
    set avigilonServiceName="Ultimo.Avigilon.Integration.Service"
    set gicWorkAppServiceName="Ultimo.GICWorkApp.Integration.Service"

    set applicationBaseDir=Ultimo.Application.Service
    set logBaseDir=Ultimo.Log.Service
    set ssoBaseDir=Ultimo.SSO.Service
    set fileBaseDir=Ultimo.File.Service
    set notificationBaseDir=Ultimo.Notification.Service
    set qrcodeBaseDir=Ultimo.QRCode.Service
    set faceboxBaseDir=Ultimo.FRServerForCamera.Integration.Service
    set faceParkBaseDir=Ultimo.FRServerForTerminal.Integration.Service
    set amagBaseDir=Ultimo.AMAG.Integration.Service
    set agoraBaseDir=Ultimo.Agora.Integration.Service
    set macBaseDir=Ultimo.MAC.Service
    set webUIBaseDir=Ultimo.IntranetWeb.Service
    set avigilonBaseDir=Ultimo.Avigilon.Integration.Service
    set vtrackBaseDir=Ultimo.VTRack.Integration.Service
    set landlordBaseDir=Ultimo.Landlord.Service
    set deskeraBaseDir=Ultimo.Deskera.Integration.Service
    set gicWorkAppBaseDir=Ultimo.GICWorkApp.Integration.Service
)
set application=false
set log=false
set sso=false
set file=false
set notification=false
set qrcode=false
set frcamera=false
set frterminal=false
set amag=false
set agora=false
set mac=false
set webui=false
set avigilon=false
set landlord=false
set vtrack=false
set deskera=false
set gicworkapp=false
 
echo ------------------------------APP------------------------------
if "%appVar%"=="all" (
    echo appVar is set to all
    set application=true
    set log=true
    set sso=true
    set file=true
    set notification=true
    set qrcode=true
    set frcamera=true
    set frterminal=true
    set amag=true
    set agora=true
    set mac=true
    set webui=true
    set avigilon=true
    set landlord=true
    set vtrack=true
    set deskera=true
    set gicworkapp=true
)
if "%appVar%"=="UltimoApplicationService" (
    echo application is set to true
    set application=true
)
if "%appVar%"=="UltimoLogService" (
    echo log is set to true
               set log=true
)
if "%appVar%"=="UltimoSSOService" (
    echo sso is set to true
               set sso=true
)
if "%appVar%"=="UltimoFileService" (
    echo file is set to true
               set file=true
)
if "%appVar%"=="UltimoNotificationService" (
    echo notification is set to true
               set notification=true
)
if "%appVar%"=="UltimoQRCodeService" (
    echo qrcode is set to true
               set qrcode=true
)
if "%appVar%"=="UltimoFRServerforCameraIntegrationService" (
    echo frcamera is set to true
               set frcamera=true
)
if "%appVar%"=="UltimoFRServerforTerminalIntegrationService" (
    echo frterminal is set to true
               set frterminal=true
)
if "%appVar%"=="UltimoAMAGIntegrationService" (
    echo amag is set to true
               set amag=true
)
if "%appVar%"=="UltimoAgoraIntegrationService" (
    echo agora is set to true
               set agora=true
)
if "%appVar%"=="UltimoMACService" (
    echo mac is set to true
               set mac=true
)
if "%appVar%"=="UltimoIntranetWebService" (
    echo webui is set to true
               set webui=true
)
if "%appVar%"=="UltimoAvigilonIntegrationService" (
    echo avigilon is set to true
               set avigilon=true
)
 
if "%appVar%"=="UltimoVtrackIntegrationService" (
    echo Vtrack is set to true
               set vtrack=true
)
if "%appVar%"=="UltimoLandlordIntegrationService" (
    echo landlord is set to true
               set landlord=true
)
if "%appVar%"=="UltimoDeskeraIntegrationService" (
    echo deskera is set to true
    set deskera=true
)
if "%appVar%"=="UltimoGICWorkAppIntegrationService" (
    echo gicworkapp is set to true
    set gicworkapp=true
)
echo ------------------------------set dest environment------------------------------
 
if %application%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2467XP" (
            set destEnv="prd"
            set application=true
            echo application prd is set to %application%
        ) else if "%localHostName%"=="SIN0M3APP2087XC" (
            set destEnv="dr"
            set application=true
            echo application dr is set to %application%
        ) else (
            set application=false
            echo application prd is set to %application%
        )
    )
)
if %log%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2467XP" (
            set destEnv="prd"
            set log=true
            echo log prd is set to %log%
        ) else if "%localHostName%"=="SIN0M3APP2087XC" (
            set destEnv="dr"
            set log=true
            echo log dr is set to %log%
        ) else (
            set log=false
            echo log prd is set to %log%
        )
    )
)
if %sso%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2467XP" (
            set destEnv="prd"
            set sso=true
            echo sso prd is set to %sso%
        ) else if "%localHostName%"=="SIN0M3APP2087XC" (
            set destEnv="dr"
            set sso=true
            echo sso dr is set to %sso%
        ) else (
            set sso=false
            echo sso prd is set to %sso%
        )
    )
)
if %notification%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2467XP" (
            set destEnv="prd"
            set notification=true
            echo notification prd is set to %notification%
        ) else if "%localHostName%"=="SIN0M3APP2087XC" (
            set destEnv="dr"
            set notification=true
            echo notification dr is set to %notification%
        ) else (
            set notification=false
            echo notification prd is set to %notification%
        )
    )
)
if %qrcode%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2467XP" (
            set destEnv="prd"
            set qrcode=true
            echo qrcode prd is set to %qrcode%
        ) else if "%localHostName%"=="SIN0M3APP2087XC" (
            set destEnv="dr"
            set qrcode=true
            echo qrcode dr is set to %qrcode%
        ) else (
            set qrcode=false
            echo qrcode prd is set to %qrcode%
        )
    )
)
if %mac%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2467XP" (
            set destEnv="prd"
            set mac=true
            echo mac prd is set to %mac%
        ) else if "%localHostName%"=="SIN0M3APP2087XC" (
            set destEnv="dr"
            set mac=true
            echo mac dr is set to %mac%
        ) else (
            set mac=false
            echo mac prd is set to %mac%
        )
    )
)
 
if %webui%==true (
    if "%envVar%"=="prod" (
        set webui = false
        if "%localHostName%"=="SIN0M3APP2465XP" (
            set destEnv="prd"
            set webui=true
            echo webui prd is set to %webui%
        ) else if "%localHostName%"=="SIN0M3APP2089XC" (
            set destEnv="dr"
            set webui=true
            echo webui dr is set to %webui%
        ) else (
            set webui=false
            echo webui prd is set to %webui%
       )
    )
)
if %file%==true (
    if "%envVar%"=="prod" (
        set file = false
        if "%localHostName%"=="SIN0M3APP2469XP" (
            set destEnv="prd"
            set file=true
            echo file prd is set to %file%
        ) else if "%localHostName%"=="SIN0M3APP2088XC" (
            set destEnv="dr"
            set file=true
            echo file dr is set to %file%
        ) else (
            set file=false
            echo file prd is set to %file%
        )
    )
)
if %amag%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set amag=true
            echo amag prd is set to %amag%
        ) else (
            set amag=false
            echo amag prd is set to %amag%
        )
    )
)
if %avigilon%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set avigilon=true
            echo avigilon prd is set to %avigilon%
        ) else (
            set avigilon=false
            echo avigilon prd is set to %avigilon%
        )
    )
)
if %frterminal%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set frterminal=true
            echo frterminal prd is set to %frterminal%
        ) else (
            set frterminal=false
            echo frterminal prd is set to %frterminal%
        )
    )
)
 
if %frcamera%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set frcamera=true
            echo frcamera prd is set to %frcamera%
        ) else (
            set frcamera=false
            echo frcamera prd is set to %frcamera%
        )
    )
)
if %agora%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set agora=true
            echo agora prd is set to %agora%
        ) else (
            set agora=false
            echo agora prd is set to %agora%
        )
    )
)
if %vtrack%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set vtrack=true
            echo vtrack prd is set to %vtrack%
        ) else (
            set vtrack=false
            echo vtrack prd is set to %vtrack%
        )
    )
)
if %landlord%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set landlord=true
            echo landlord prd is set to %landlord%
        ) else (
            set landlord=false
            echo landlord prd is set to %landlord%
        )
    )
)
if %deskera%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set deskera=true
            echo deskera prd is set to %deskera%
        ) else (
            set deskera=false
            echo deskera prd is set to %deskera%
        )
    )
)
if %gicworkapp%==true (
    if "%envVar%"=="prod" (
        if "%localHostName%"=="SIN0M3APP2468XP" (
            set destEnv="prd"
            set gicworkapp=true
            echo workapp prd is set to %gicworkapp%
        ) else (
            set gicworkapp=false
            echo gicworkapp prd is set to %gicworkapp%
        )
    )
)
 
echo "%envVar%"
echo "%destEnv%"
 
if %application%==true (
    echo inside application
    echo backup application service
    echo %today%
    mkdir %destBaseFolder%\Backup\%applicationBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%applicationBaseDir% %destBaseFolder%\Backup\%applicationBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping service
    NET STOP %applicationServiceName%
    echo service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Application.Service %destBaseFolder%\%applicationBaseDir% /XF *.json
 
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Application.Service\appsettings.%destEnv%.json %destBaseFolder%\%applicationBaseDir% /s /y
    cd %destBaseFolder%\%applicationBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully
 
    echo starting service
    NET START %applicationServiceName%
    echo %applicationServiceName% service start succesfully
 
    echo application deployment completed 
)
if %log%==true (
    echo inside log
    echo backup log service
    echo %today%
    mkdir %destBaseFolder%\Backup\%logBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%logBaseDir% %destBaseFolder%\Backup\%logBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping service
    NET STOP %logServiceName%
    echo service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Log.Service %destBaseFolder%\%logBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Log.Service\appsettings.%destEnv%.json %destBaseFolder%\%logBaseDir% /s /y
    cd %destBaseFolder%\%logBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting service
    NET START %logServiceName%
    echo service start succesfully
 
    echo log deployment completed 
)
if %sso%==true (
    echo inside sso
    echo backup sso service
    echo %today%
    mkdir %destBaseFolder%\Backup\%ssoBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%ssoBaseDir% %destBaseFolder%\Backup\%ssoBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping sso service
    NET STOP %ssoServiceName%
    echo sso service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\SSO.Service %destBaseFolder%\%ssoBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\SSO.Service\appsettings.%destEnv%.json %destBaseFolder%\%ssoBaseDir% /s /y
    cd %destBaseFolder%\%ssoBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting sso service
    NET START %ssoServiceName%
    echo sso service start succesfully
 
    echo sso deployment completed 
)
if %file%==true (
    echo inside file
    echo backup file service
    echo %today%
    mkdir %destBaseFolder%\Backup\%fileBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%fileBaseDir% %destBaseFolder%\Backup\%fileBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping file service
    NET STOP %fileServiceName%
    echo file service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\File.Service %destBaseFolder%\%fileBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\File.Service\appsettings.%destEnv%.json %destBaseFolder%\%fileBaseDir% /s /y
    cd %destBaseFolder%\%fileBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting file service
    NET START %fileServiceName%
    echo file service start succesfully
   
    echo file deployment completed 
)
if %notification%==true (
    echo inside notification
    echo backup notification service
    echo %today%
    mkdir %destBaseFolder%\Backup\%notificationBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%notificationBaseDir% %destBaseFolder%\Backup\%notificationBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping notification service
    NET STOP %notificationServiceName%
    echo notification service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Notification.Service %destBaseFolder%\%notificationBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Notification.Service\appsettings.%destEnv%.json %destBaseFolder%\%notificationBaseDir% /s /y
    cd %destBaseFolder%\%notificationBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting notification service
    NET START %notificationServiceName%
    echo notification service start succesfully
   
    echo notification deployment completed 
)
 
if %qrcode%==true (
    echo inside qrcode
    echo backup qrcode service
    echo %today%
    mkdir %destBaseFolder%\Backup\%qrcodeBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%qrcodeBaseDir% %destBaseFolder%\Backup\%qrcodeBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping qrcode service
    NET STOP %qrcodeServiceName%
    echo qrcode service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\QRCode.Service %destBaseFolder%\%qrcodeBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\QRCode.Service\appsettings.%destEnv%.json %destBaseFolder%\%qrcodeBaseDir% /s /y
    cd %destBaseFolder%\%qrcodeBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting qrcode service
    NET START %qrcodeServiceName%
    echo qrcode service start succesfully
   
    echo qrcode deployment completed 
)
 
if %mac%==true (
    echo inside mac
    echo backup mac service
    echo %today%
    mkdir %destBaseFolder%\Backup\%macBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%macBaseDir% %destBaseFolder%\Backup\%macBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping mac service
    NET STOP %macServiceName%
    echo mac service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\MAC.Service %destBaseFolder%\%macBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\MAC.Service\appsettings.%destEnv%.json %destBaseFolder%\%macBaseDir% /s /y
    cd %destBaseFolder%\%macBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting mac service
    NET START %macServiceName%
    echo mac service start succesfully
   
    echo mac deployment completed 
)
 
if %amag%==true (
    echo inside amag integration
    echo backup amag integration service
    echo %today%
    mkdir %destBaseFolder%\Backup\%amagBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%amagBaseDir% %destBaseFolder%\Backup\%amagBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping amag service
    NET STOP %amagServiceName%
    echo amag service stop succesfully
 
    echo clear old %destBaseFolder%\%amagBaseDir%
    del %destBaseFolder%\%amagBaseDir% /s /f /a /q
 
    echo start copy files
    robocopy /s %srcPath%\AMAG.Service %destBaseFolder%\%amagBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\AMAG.Service\appsettings.%destEnv%.json %destBaseFolder%\%amagBaseDir% /s /y
    cd %destBaseFolder%\%amagBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting amag service
    NET START %amagServiceName%
    echo amag service start succesfully
   
    echo amag deployment completed 
)
 
if %agora%==true (
    echo inside agora integration
    echo backup agora integration service
    echo %today%
    mkdir %destBaseFolder%\Backup\%agoraBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%agoraBaseDir% %destBaseFolder%\Backup\%agoraBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping agora service
    NET STOP %agoraServiceName%
    echo agora service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Agora.Service %destBaseFolder%\%agoraBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Agora.Service\appsettings.%destEnv%.json %destBaseFolder%\%agoraBaseDir% /s /y
    cd %destBaseFolder%\%agoraBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting agora service
    NET START %agoraServiceName%
    echo agora service start succesfully
   
    echo agora deployment completed 
)
 
if %frcamera%==true (
    echo inside frcamera
    echo backup frcamera service
    echo %today%
    mkdir %destBaseFolder%\Backup\%faceboxBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%faceboxBaseDir% %destBaseFolder%\Backup\%faceboxBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping frcamera service
    NET STOP %faceboxServiceName%
    echo frcamera service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\YituBox.Service %destBaseFolder%\%faceboxBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\YituBox.Service\appsettings.%destEnv%.json %destBaseFolder%\%faceboxBaseDir% /s /y
    cd %destBaseFolder%\%faceboxBaseDir%
    if exist "appsettings.json" (
         del "appsettings.json"
    )
    if exist "appsettings.%destEnv%.json" (
        rename "appsettings.%destEnv%.json" "appsettings.json"
    )
    echo copy files succesfully
 
    echo starting frcamera service
    NET START %faceboxServiceName%
    echo frcamera service start succesfully
   
    echo frcamera deployment completed 
)
if %frterminal%==true (
    echo inside frterminal
    echo backup frterminal service
    echo %today%
    mkdir %destBaseFolder%\Backup\%faceParkBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%faceParkBaseDir% %destBaseFolder%\Backup\%faceParkBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping frterminal service
    NET STOP %faceparkServiceName%
    echo frterminal service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\YituPark.Service %destBaseFolder%\%faceParkBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\YituPark.Service\appsettings.%destEnv%.json %destBaseFolder%\%faceParkBaseDir% /s /y
    cd %destBaseFolder%\%faceParkBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully
 
    echo starting frterminal service
    NET START %faceparkServiceName%
    echo frterminal service start succesfully
   
    echo frterminal deployment completed 
)
 
if %webui%==true (
    echo inside web ui
    echo backup web ui service
    echo %today%
    mkdir %destBaseFolder%\Backup\%webUIBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%webUIBaseDir% %destBaseFolder%\Backup\%webUIBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo start copy files
    robocopy /s %srcPath%\WebUI %destBaseFolder%\%webUIBaseDir%
    robocopy /s %destBaseFolder%\%webUIBaseDir%\staff %destBaseFolder%\%webUIBaseDir%\ops
    echo appsetting file deployment for %envVar%?%destEnv%
    echo copy files succesfully
   
    echo web ui deployment completed 
)
 
if %avigilon%==true (
    echo inside avigilon
    echo backup avigilon service
    echo %today%
    mkdir %destBaseFolder%\Backup\%avigilonBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%avigilonBaseDir% %destBaseFolder%\Backup\%avigilonBaseDir%_%today% /XD Logs AvigilonRedist
    echo backup completed
 
    echo stoping avigilon service
    NET STOP %avigilonServiceName%
    echo avigilon service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Avigilon.Service %destBaseFolder%\%avigilonBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Avigilon.Service\appsettings.%destEnv%.json %destBaseFolder%\%avigilonBaseDir% /s /y
    cd %destBaseFolder%\%avigilonBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully
 
    echo starting avigilon service
    NET START %avigilonServiceName%
    echo avigilon service start succesfully
    echo avigilon deployment completed 
)
 
if %vtrack%==true (
    echo inside vtrack
    echo backup vtrack service
    echo %today%
    mkdir %destBaseFolder%\Backup\%vtrackBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%vtrackBaseDir% %destBaseFolder%\Backup\%vtrackBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping vtrack service
    NET STOP %vtrackServiceName%
    echo vtrack service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Vtrack.Service %destBaseFolder%\%vtrackBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Vtrack.Service\appsettings.%destEnv%.json %destBaseFolder%\%vtrackBaseDir% /s /y
    cd %destBaseFolder%\%vtrackBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully
 
    echo starting vtrack service
    NET START %vtrackServiceName%
    echo vtrack service start succesfully
    echo vtrack deployment completed 
)
 
if %landlord%==true (
    echo inside landlord
    echo backup landlord service
    echo %today%
    mkdir %destBaseFolder%\Backup\%landlordBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%landlordBaseDir% %destBaseFolder%\Backup\%landlordBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping landlord service
    NET STOP %landlordServiceName%
    echo landlord service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Landlord.Service %destBaseFolder%\%landlordBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Landlord.Service\appsettings.%destEnv%.json %destBaseFolder%\%landlordBaseDir% /s /y
    cd %destBaseFolder%\%landlordBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully
 
    echo starting landlord service
    NET START %landlordServiceName%
    echo landlord service start succesfully
    echo landlord deployment completed 
)
 
if %deskera%==true (
    echo inside deskera
    echo backup deskera service
    echo %today%
    mkdir %destBaseFolder%\Backup\%deskeraBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%deskeraBaseDir% %destBaseFolder%\Backup\%deskeraBaseDir%_%today% /XD Logs
    echo backup completed
 
    echo stoping deskera service
    NET STOP %deskeraServiceName%
    echo deskera service stop succesfully
 
    echo start copy files
    robocopy /s %srcPath%\Deskera.Service %destBaseFolder%\%deskeraBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\Deskera.Service\appsettings.%destEnv%.json %destBaseFolder%\%deskeraBaseDir% /s /y
    cd %destBaseFolder%\%deskeraBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully
 
    echo starting deskera service
    NET START %deskeraServiceName%
    echo deskera service start succesfully
    echo deskera deployment completed
)

if %gicworkapp%==true (
    echo inside gicworkapp
    echo backup gicworkapp service
    echo %today%
    mkdir %destBaseFolder%\Backup\%gicWorkAppBaseDir%_%today%
    echo backup directory created succesfully
    robocopy /s %destBaseFolder%\%gicWorkAppBaseDir% %destBaseFolder%\Backup\%gicWorkAppBaseDir%_%today% /XD Logs
    echo backup completed

    echo stoping gicworkapp service
    NET STOP %gicWorkAppServiceName%
    echo gicworkapp service stop successfully

    echo start copy files
    robocopy /s %srcPath%\GICWorkApp.Service %destBaseFolder%\%gicWorkAppBaseDir% /XF *.json
    echo appsetting file deployment for %envVar%?%destEnv%
    xcopy %srcPath%\GICWorkApp.Service\appsettings.%destEnv%.json %destBaseFolder%\%gicWorkAppBaseDir% /s /y
    cd %destBaseFolder%\%gicWorkAppBaseDir%
    if exist appsettings.json (
         del appsettings.json
    )
    if exist appsettings.%destEnv%.json (
        rename appsettings.%destEnv%.json appsettings.json
    )
    echo copy files succesfully

    echo starting gicworkapp service
    NET START %gicWorkAppServiceName%
    echo gicworkapp service start succesfully
    echo gicworkapp deployment completed
)