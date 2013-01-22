#
# Makefile
#
# Paul Reiners
# Computer Science 50
# Final Project
#


# compiler to use
CC = clang

# flags to pass compiler
CFLAGS = -ggdb -O0 -Qunused-arguments -std=c99 -Wall -Werror

# name for executable
EXE = project

# space-separated list of header files
HDRS = 

# space-separated list of libraries, if any,
# each of which should be prefixed with -l
LIBS = -lm -lgmp

# space-separated list of source files
SRCS = ./src/project.c 

# automatically generated list of object files
OBJS = $(SRCS:.c=.o)

# default target
$(EXE): $(OBJS) $(HDRS) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

# dependencies 
$(OBJS): $(HDRS) Makefile

# housekeeping
clean:
	rm -f core $(EXE) *.o ./src/*.o ./test/*.o
