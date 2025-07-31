@echo off

set PCLP_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEwMCwiaWF0IjoxNzQzMDc3OTg0MDg5LCJyZWFkLW9ubHkiOjB9.SptM1oD1zLjGg9JFNOaNNU2WBgvSLAuO4jb0PhfOYHQ=

if "%1"=="SQ" goto  SONARQUBE
if "%1"=="WNG" goto WARNINGSNG
if "%1"=="JSON" goto JSON

set LINT_LIST=CurrentRelease\co-gcc.lnt CurrentRelease\env-xml.lnt -w1 CurrentRelease\au-misra-cpp.lnt -wlib=4 -wlib=1 CurrentRelease\post_file_list.lnt
set LINT_OUTPUT=pclp_post_results.xml
goto PCLP

:WARNINGSNG
set LINT_LIST=CurrentRelease\co-gcc.lnt CurrentRelease\env-warnings-ng.lnt -w1 CurrentRelease\au-misra-cpp.lnt -wlib=4 -wlib=1 CurrentRelease\post_file_list.lnt
set LINT_OUTPUT=CurrentRelease\pclp_post_lint_results.txt
goto PCLP

:SONARQUBE
set LINT_LIST=CurrentRelease\post_sq.lnt
set LINT_OUTPUT=CurrentRelease\pclp_post_sq_results.xml
goto PCLP

:JSON
pclp64 CurrentRelease\co-gcc.lnt CurrentRelease\env-json.lnt CurrentRelease\env-xml.lnt -w1 CurrentRelease\au-misra4.lnt -wlib=4 -wlib=1 -server_data="CurrentRelease" "+metric_report(scope=all,format=json,filename=CurrentRelease\metrics.json)" CurrentRelease\post_file_list.lnt > CurrentRelease\pclp_post_results.xml
java -jar %PCLP_AGENT_JAR% -t %PCLP_TOKEN% http://localhost:8280 -- --name="PointOfSales_v2" --dp="type=pclp,pclp_dir=CurrentRelease" --repository="type=scm_auto,path=CurrentRelease"
goto END

:PCLP
pclp64 %LINT_LIST% > %LINT_OUTPUT%

:END
