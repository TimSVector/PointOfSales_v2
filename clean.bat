

del /s /f /q *.*
for /f %%f in ('dir /ad /b .') do rd /s /q %%f
