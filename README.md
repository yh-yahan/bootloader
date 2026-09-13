# Bootloader from Zero

Companion source for a series on writing a bootloader from scratch.

This targets the classic BIOS + MBR boot process, not UEFI.

## Parts

| Part | Folder | Post |
|------|--------|------|
| 1. Hello World | [`parts/01-hello-world`](parts/01-hello-world) | [Bootloader from Zero - Part 1](https://yh-yahan.netlify.app/blogs/bootloader-from-zero-part-1/) |
| 2. Second stage | [`parts/02-second-stage`](parts/02-second-stage) | [Bootloader from Zero - Part 2](https://yh-yahan.netlify.app/blogs/bootloader-from-zero-part-2/) |

## Requirements

- [NASM](https://www.nasm.us/)
- [QEMU](https://www.qemu.org/)
- `dd` and `cat` (usually available on Linux and macOS)
