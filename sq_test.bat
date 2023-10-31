call %~dp0setenv.bat > nul 2>&1
%VECTORCAST_DIR%\manage --project D:\dev\PointOfSales_v2\CurrentRelease\vcast-workarea\vc_manage\PointOfSales_Manage.vcm --build-execute --incremental
%VECTORCAST_DIR%\vpython D:\\vector\\github\\gitlab\\vectorcast_gitlab_remote_single\\vc_scripts\\gitlab_exec.py D:\dev\PointOfSales_v2\CurrentRelease\vcast-workarea\vc_manage\PointOfSales_Manage.vcm --metrics --sonarqube

build-wrapper-win-x86-64 --out-dir bw-output CurrentRelease\make_post.bat

sonar-scanner.bat -Dsonar.projectKey=Post_AVT -Dsonar.cfamily.build-wrapper-output=bw-output -Dsonar.host.url=http://localhost:9900 -Dsonar.token=sqp_d9c6a701aa93e33b204badf5f9b56cab6eb4e484 -Dsonar.lauguage=c -Dsonar.sources=CurrentRelease -Dsonar.exclusions=CurrentRelease/vcast-workarea/** -Dsonar.cfamily.cppunit.reportsPath=xml_data/sonarqube -Dsonar.cfamily.cobertura.reportPaths=xml_data/cobertura/coverage_results_PointOfSales_Manage.xml -Dsonar.externalIssuesReportPaths=xml_data\pclintplus\post_lint_results.json