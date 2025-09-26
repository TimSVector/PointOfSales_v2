
del *.html /q > nul

%VECTORCAST_DIR%\manage -p AdaCTest --config=VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\manage -p AdaCTest --create-report aggregate --output=SFP_AdaCTest_aggregate_coverage_report.html
%VECTORCAST_DIR%\manage -p AdaCTest --create-report metrics   --output=SFP_AdaCTest_metrics_report.html


%VECTORCAST_DIR%\manage -p AdaCTest --config=VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=FALSE
%VECTORCAST_DIR%\manage -p AdaCTest --create-report aggregate --output=TU_AdaCTest_aggregate_coverage_report.html
%VECTORCAST_DIR%\manage -p AdaCTest --create-report metrics   --output=TU_AdaCTest_metrics_report.html
