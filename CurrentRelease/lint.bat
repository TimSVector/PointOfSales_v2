@echo off

pushd %~dp0
set FORMAT=
set EXT=xml

%VECTORCAST_DIR%/vpython -c "from datetime import datetime; print(datetime.now())"

pclp64 post.lnt env-xml.lnt database\src\database.c encrypt\src\encrypt.c  encrypt\src\matrix_multiply.c  order_entry\src\manager.c main\pos_driver.c order_entry\src\waiting_list.c utils\src\whitebox.c utils\src\linked_list.c >  post_lint_results.xml

%VECTORCAST_DIR%/vpython -c "from datetime import datetime; print(datetime.now())"
popd