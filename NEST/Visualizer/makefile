CC = g++    # Chosing the C++ compiler

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall
LIBS=-lsfml-graphics -lsfml-window -lsfml-system
# the build target executable:
default = vis

vis: main.o Visualizer.o $(LIBS)
	$(CC) $(CFLAGS) -o vis main.o Visualizer.o

main.o: main.cpp main.h
	$(CC) $(CFLAGS) -c main.cpp

Visualizer.o: Visualizer.cpp Visualizer.h
	$(CC) $(CFLAGS) -c Visualizer.cpp

#Deleting object files
clean:
	$(RM) vis *.o *~
