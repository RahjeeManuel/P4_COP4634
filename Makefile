OBJS	= disk.o fileSystem.o inode.o main.o
SOURCE	= disk.cpp fileSystem.cpp inode.cpp main.cpp
HEADER	= disk.hpp fileSystem.hpp superblock.hpp inode.hpp
OUT	= project
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

disk.o: disk.cpp
	$(CC) $(FLAGS) disk.cpp 

fileSystem.o: fileSystem.cpp
	$(CC) $(FLAGS) fileSystem.cpp 

inode.o: inode.cpp
	$(CC) $(FLAGS) inode.cpp 

main.o: main.cpp
	$(CC) $(FLAGS) main.cpp 

clean:
	rm -f $(OBJS) $(OUT)

run: $(OUT)
	./$(OUT)