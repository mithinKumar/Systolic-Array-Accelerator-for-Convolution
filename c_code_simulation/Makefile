CC ?= gcc
CFLAGS ?= -Wall -Wextra -std=c99 -pedantic
HDRS = matrix_ops.h logger.h test_framework.h
OBJS = matrix_ops.o logger.o

.PHONY: all test clean lint

all: complete preprocessing demo test_runner

logger.o: logger.c logger.h
	$(CC) $(CFLAGS) -c logger.c -o logger.o

matrix_ops.o: matrix_ops.c matrix_ops.h logger.h
	$(CC) $(CFLAGS) -c matrix_ops.c -o matrix_ops.o

complete: complete.c $(OBJS) $(HDRS)
	$(CC) $(CFLAGS) complete.c $(OBJS) -o complete

preprocessing: preprocessing.c $(OBJS) $(HDRS)
	$(CC) $(CFLAGS) preprocessing.c $(OBJS) -o preprocessing

demo: demo.c $(OBJS) $(HDRS)
	$(CC) $(CFLAGS) demo.c $(OBJS) -o demo

test_runner: test_matrix_ops.c $(OBJS) $(HDRS)
	$(CC) $(CFLAGS) test_matrix_ops.c $(OBJS) -o test_runner

test: test_runner
	./test_runner

clean:
	rm -f *.o complete preprocessing demo test_runner *.exe

lint:
	clang-format --dry-run --Werror *.c *.h
