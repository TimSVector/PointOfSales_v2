#Makefile for demo

CC = gcc -g 
CFLAGS = -Iinc -Wno-implicit-function-declaration
OBJS = database\database.o order_entry\manager.o  order_entry\main\manager_driver.o utils\whitebox.o
EXE = managerDriver.exe

ifeq ($(OS),Windows_NT)
RM=del /q /s
else
RM=rm -fr
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
	${VECTORCAST_DIR}/vpython test.py --xml-pretty --exclude-unreachable-branches --print-summary -o coverage.xml --root ${CI_PROJECT_DIR}
    
clean:
	$(RM) $(OBJS) *.gcda *.gcno $(EXE) > nul 2>&1

all: 