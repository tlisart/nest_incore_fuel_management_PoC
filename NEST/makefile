CC = g++    # Chosing the C++ compiler

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
default = nest

nest: main.o Swapper/Swapper.o Visualizer/Visualizer.o
	$(CC) $(CFLAGS) -o nest main.o Swapper.o Visualizer.o

main.o : main.cpp main.h
	$(CC) $(CFLAGS) -c main.cpp

Swapper/Swapper.o : Swapper/Swapper.cpp Swapper/Swapper.h
	$(CC) $(CFLAGS) -c Swapper/Swapper.cpp

Visualizer/Visualizer.o : Visualizer/Visualizer.cpp Visualizer/Visualizer.h
	$(CC) $(CFLAGS) -c Visualizer/Visualizer.cpp


#Deleting object files
clean:
	$(RM) nest *.o *~
