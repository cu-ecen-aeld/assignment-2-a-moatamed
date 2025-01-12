#set the defualt complier to be gcc unless prviding the CROSS_COMPILE
#varibale on make command line.
CC := $(CROSS_COMPILE)gcc


# Target to build the executable
writer: writer.c
	@$(CC) writer.c -o writer

# Clean up build artifacts
clean:
	@rm -f *.o writer

