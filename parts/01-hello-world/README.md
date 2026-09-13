
# Part 1: Hello World

A single-stage MBR bootloader that prints `Hello, World!` with BIOS teletype output (`int 0x10`, function `0x0E`), then hangs.

Full writeup: [Bootloader from zero - Part 1: Hello World](https://yh-yahan.netlify.app/blogs/bootloader-from-zero-part-1/)

## Files

- `boot.asm` - first (and only) stage, loaded by the BIOS at `0x7C00`

## Build

```sh
nasm -f bin -o boot.bin boot.asm
dd if=/dev/zero of=disk.img bs=1M count=1
dd if=boot.bin of=disk.img bs=512 count=1 conv=notrunc
```

## Run
```sh
qemu-system-x86_64 -drive format=raw,file=disk.img
```
