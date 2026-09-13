# Part 2: Second stage

A two-stage bootloader. Stage 1 is loaded by the BIOS at `0x7C00`, reads the next sector with `int 0x13` (AH=`0x02`), and jumps to stage 2 at `0x7E00`. Stage 2 prints `Hello, World!`.

Full writeup: [Bootloader from zero - Part 2: Second stage](https://yh-yahan.netlify.app/blogs/bootloader-from-zero-part-2/)

## Files

- `boot.asm` - first stage (MBR). Reads sector 2 and jumps to `0x7E00`
- `second_stage.asm` - second stage. Prints the message

## Build

```sh
nasm -f bin boot.asm -o boot.bin
nasm -f bin second_stage.asm -o second_stage.bin
cat boot.bin second_stage.bin > disk.img
```

## Run
```sh
qemu-system-x86_64 -drive format=raw,file=disk.img
```
