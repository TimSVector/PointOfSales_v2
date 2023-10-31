@echo off

pushd %~dp0

if "%1"=="SQ" goto :SONARQUBE

pclp64 post.lnt database\src\database.c        >  post_lint_results.txt   
pclp64 post.lnt encrypt\src\encrypt.c          >> post_lint_results.txt     
pclp64 post.lnt encrypt\src\matrix_multiply.c  >> post_lint_results.txt     
pclp64 post.lnt order_entry\src\manager.c      >> post_lint_results.txt       
pclp64 post.lnt main\pos_driver.c              >> post_lint_results.txt   
pclp64 post.lnt order_entry\src\waiting_list.c >> post_lint_results.txt       
pclp64 post.lnt utils\src\whitebox.c           >> post_lint_results.txt     
pclp64 post.lnt utils\src\linked_list.c        >> post_lint_results.txt     

goto END

:SONARQUBE

pclp64 post_sq.lnt database\src\database.c        >  post_lint_results.txt   
pclp64 post_sq.lnt encrypt\src\encrypt.c          >> post_lint_results.txt     
pclp64 post_sq.lnt encrypt\src\matrix_multiply.c  >> post_lint_results.txt     
pclp64 post_sq.lnt order_entry\src\manager.c      >> post_lint_results.txt       
pclp64 post_sq.lnt main\pos_driver.c              >> post_lint_results.txt   
pclp64 post_sq.lnt order_entry\src\waiting_list.c >> post_lint_results.txt       
pclp64 post_sq.lnt utils\src\whitebox.c           >> post_lint_results.txt     
pclp64 post_sq.lnt utils\src\linked_list.c        >> post_lint_results.txt     

:END

popd