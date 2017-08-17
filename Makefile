all: first prime

first: driver.o asm_io.o first.o
	gcc -o first first.o driver.o asm_io.o

prime: driver.o asm_io.o prime.o
	gcc -o prime driver.o asm_io.o prime.o

driver.o: driver.c
	gcc -c driver.c

asm_io.o: asm_io.asm
	nasm -f elf -d ELF_TYPE asm_io.asm

first.o: first.asm
	nasm -f elf first.asm

prime.o: prime.asm
	nasm -f elf prime.asm

clean:
	rm *.o 
	rm first prime
