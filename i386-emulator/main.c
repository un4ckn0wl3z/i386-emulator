#include "disable_security.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include "emulator.h"
#include "emulator_function.h"
#include "instruction.h"

/* 1MB */
#define MEMORY_SIZE (1024 * 1024)

#define PROGRAM_NAME "i386-emulator"

char* registers_name[] = { "EAX", "ECX", "EDX", "EBX", "ESP", "EBP", "ESI", "EDI" };

static void read_binary(Emulator* emu, const char* filename)
{
    FILE* binary;

    binary = fopen(filename, "rb");

    if (binary == NULL) {
        printf("error: %s\n", filename);
        exit(1);
    }

    fread(emu->memory + 0x7c00, 1, 0x200, binary);
    fclose(binary);
}

static void dump_registers(Emulator* emu)
{
    int i;

    for (i = 0; i < REGISTERS_COUNT; i++) {
        printf("%s = %08x\n", registers_name[i], get_register32(emu, i));
    }

    printf("EIP = %08x\n", emu->eip);
}

static Emulator* create_emu(size_t size, uint32_t eip, uint32_t esp)
{
    Emulator* emu = malloc(sizeof(Emulator));

    emu->memory = malloc(size);

    memset(emu->registers, 0, sizeof(emu->registers));

    emu->eip = eip;

    emu->registers[ESP] = esp;

    return emu;
}

static void destroy_emu(Emulator* emu)
{
    free(emu->memory);
    free(emu);
}

int main(int argc, char* argv[])
{
    Emulator* emu;

    if (argc != 2) {
        printf("usage: %s filename\n", PROGRAM_NAME);
        return 1;
    }

    init_instructions();

    emu = create_emu(MEMORY_SIZE, 0x7c00, 0x7c00);

    read_binary(emu, argv[1]);

    while (emu->eip < MEMORY_SIZE) {
        uint8_t code = get_code8(emu, 0);
        printf("EIP = %X, Code = %02X\n", emu->eip, code);

        if (instructions[code] == NULL) {
            printf("\n\nNot Implemented: %x\n", code);
            break;
        }

        instructions[code](emu);

        if (emu->eip == 0) {
            printf("\n\nend of program.\n\n");
            break;
        }
    }

    dump_registers(emu);
    destroy_emu(emu);
    return 0;
}

