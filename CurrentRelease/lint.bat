@echo on

pushd %~dp0
set FORMAT=
set EXT=xml

pclp64 post.lnt env-xml.lnt database\src\database.c encrypt\src\encrypt.c  encrypt\src\matrix_multiply.c  order_entry\src\manager.c main\pos_driver.c order_entry\src\waiting_list.c utils\src\whitebox.c utils\src\linked_list.c >  post_lint_results.xml

REM pclp64 post.lnt %FORMAT% encrypt\src\encrypt.c          >> post_lint_results.%EXT%
REM pclp64 post.lnt %FORMAT% encrypt\src\matrix_multiply.c  >> post_lint_results.%EXT%
REM pclp64 post.lnt %FORMAT% order_entry\src\manager.c      >> post_lint_results.%EXT%
REM pclp64 post.lnt %FORMAT% main\pos_driver.c              >> post_lint_results.%EXT%
REM pclp64 post.lnt %FORMAT% order_entry\src\waiting_list.c >> post_lint_results.%EXT%
REM pclp64 post.lnt %FORMAT% utils\src\whitebox.c           >> post_lint_results.%EXT%
REM pclp64 post.lnt %FORMAT% utils\src\linked_list.c        >> post_lint_results.%EXT%

popd