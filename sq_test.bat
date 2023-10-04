call %~dp0setup.bat
build-wrapper-win-x86-64 --out-dir bw-output CurrentRelease\make_post.bat
sonar-scanner -Dsonar.cfamily.build-wrapper-output=bw-output -Dsonar.cfamily.cobertura.reportPaths=xml_data/coverage_results*.xml -Dsonar.junit.reportPaths=xml_data/test_results_*.xml