
set SQUORE_HOME=C:/Vector/tools/squore/24.0.4
set SQUORE_PROJECT_NAME=PointOfSales_v2
set SQUORE_JAR=%SQUORE_HOME%\lib\squore-agent.jar
set SQUORE_URL=http://localhost:8180
set SQUORE_COMMANDS=PROCESS_CREATION
set VCAST_DEMO_SRC_BASE=%~dp0CurrentRelease
set path=%path%;c:/vector/tools/gnat/2017/bin
set SQUORE_TOKEN_GITLAB=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEwMCwiaWF0IjoxNzQ3MjMwODc4MzIzLCJyZWFkLW9ubHkiOjB9.lR8-fyqrypqnRNgzc3IfBU1-NmxXmRZsSUBBM2-rAq4=
set GITLAB_TOKEN=glpat-iXizWJ9Gu4p7V-2gAis2

:: Getting the Squore "version"
for /f %%i in ('git rev-list --count HEAD') do set REV_COUNT=%%i

set SQUORE_VERSION=%CI_PROJECT_TITLE%-%REV_COUNT%-%CI_PIPELINE_ID%-%GITLAB_USER_LOGIN%
set SQUORE_VERSION=%SQUORE_VERSION:~0,64%

if not exist "%~dp0xml_data\squore" (
    mkdir "%~dp0xml_data\squore"
)

if not defined WORKSPACE (
    if not defined CI_PROJECT_DIR (
        set WORKSPACE=%~dp0
        set CI_PROJECT_DIR=%~dp0
        set VCAST_CHECKOUT_ROOT=%~dp0
   ) else (
        set VCAST_CHECKOUT_ROOT=%CI_PROJECT_DIR%
    )
) else (
    set VCAST_CHECKOUT_ROOT=%WORKSPACE%
)

java -jar %SQUORE_JAR% %SQUORE_URL% -t %SQUORE_TOKEN_GITLAB% -- --commands=%SQUORE_COMMANDS% --name=%SQUORE_PROJECT_NAME% --color="rgb(64,192,0)" --version="%SQUORE_VERSION%" --wizardId="ANALYTICS" --tag="CRITICAL_FACTOR=CRITICAL_FACTOR_D" --dp="type=SQuORE,languages=c:.c,.C;cpp:.cpp,.CPP,.h,.H,.cxx,.CXX,.hxx,.HXX,.cc,.CC,.hh,.HH,pattern_dir=%VCAST_DEMO_SRC_BASE%\vcast-workarea;" --dp="type=VectorCAST_API,project_file_list=%VCAST_DEMO_SRC_BASE%\vcast-workarea\vc_manage\PointOfSales_Manage.vcm,advanced_options=true,vectorcast_dir=%VECTORCAST_DIR%,vectorcast_version=Version 25" --dp="type=pclint_plus,results=%VCAST_DEMO_SRC_BASE%\pclp_post_results.xml,update_rules=true,config_files=%VCAST_DEMO_SRC_BASE%\co-gcc.lnt;%VCAST_DEMO_SRC_BASE%\env-xml.lnt;%VCAST_DEMO_SRC_BASE%\au-misra-cpp.lnt" --repository="path=%VCAST_CHECKOUT_ROOT%"
