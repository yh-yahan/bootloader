# Bootloader from Zero - Part 1

A minimal x86 bootloader written in assembly that prints `Hello, World!` using BIOS interrupts.

This is an educational project focused on the classic (legacy) BIOS + MBR boot process. It is not intended for modern UEFI systems.

## What it does

- Fits in the first 512 bytes of a disk (MBR)
- Is loaded by the BIOS at memory address `0x7C00`
- Prints a short message using BIOS teletype output (`int 0x10`, function `0x0E`)
- Halts in an infinite loop after printing

## Requirements

- [NASM](https://www.nasm.us/) (Netwide Assembler)
- [QEMU](https://www.qemu.org/) (for testing)
- `dd` (usually available on Linux/macOS)

## Notes

This targets legacy BIOS only. Modern machines primarily use UEFI.
The code intentionally skips the partition table to keep the example simple.
The boot signature 0x55 0xAA is required at the end of the 512-byte sector.

## Related writing

[Bootloader from Zero - Part 1: Hello World](https://yh-yahan.netlify.app/blogs/bootloader-from-zero-part-1/)
