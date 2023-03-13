#Makefile for demo

PYTHON=python
CC = gcc -g
CFLAGS = -Iinc -Wno-implicit-function-declaration
OBJS = database/database.o order_entry/manager.o  order_entry/main/manager_driver.o utils/whitebox.o
GCOV_DATA = database/database.gcda order_entry/manager.gcda  order_entry/main/manager_driver.gcda utils/whitebox.gcda \
            database/database.gcno order_entry/manager.gcno  order_entry/main/manager_driver.gno utils/whitebox.gcno

ifeq ($(OS),Windows_NT)
RM=del /q /s
EXE=managerDriver.exe
else
RM=rm -fr
EXE=managerDriver
endif

ifeq ($(GCOV),1)
GCOV_FLAGS= -DCHECK -fprofile-arcs -ftest-coverage -fPIC -O0
else
GCOV_FLAGS=
endif

%.o: %.c
        $(CC) -c $(GCOV_FLAGS) $(CFLAGS) -o $@ $< 

$(EXE) : $(OBJS)
        $(CC)    $(GCOV_FLAGS) -o  $@ $^ 

test: $(EXE)
        ./$(EXE)

coco:
        $(PYTHON) generate_cobertura_coco.py --xml-pretty --exclude-unreachable-branches --print-summary -o coverage.xml --root ${CI_PROJECT_DIR}

clean: 
        $(RM) $(EXE) $(OBJS) $(GCOV_DATA)
