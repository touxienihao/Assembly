all: first

first: driver.o asm_io.o first.o
	gcc -o first driver.o first.o asm_io.o

driver.o: driver.c
	gcc -c driver.c

first.o: first.asm
	nasm -f elf first.asm

asm_io: asm_io.asm
	nasm -f elf asm_io.o

clean:
	rm *.o 
	rm first