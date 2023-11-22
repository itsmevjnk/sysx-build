# sysx-build
SysX - an Unix-like operating system designed with portability in mind.

This repository contains build scripts for SysX.

For the kernel itself, check out the [sysx](https://github.com/itsmevjnk/sysx) repo.

## Preview

A live preview of SysX is available [here](https://itsmevjnk.github.io/sysx-build/).

## Instructions

### Prerequisites

Any Linux distribution with:

- `i686-elf-gcc` for building kernel images.
- `nasm` for assembly files.
- `genisoimage` for building the iso.
- `qemu-system-x86` for emulation.

### Building

```sh
# Clone this repo with all submodules
git clone --recursive https://github.com/itsmevjnk/sysx-build.git

cd sysx-build
./configure.sh x86
./build.sh

# Run it on QEMU
./emulate.sh
```

### Notes
- You can replace `i686-elf-gcc` with another `x86` ELF toolchain. `i386-elf-gcc` is known to work. To use this, set `$HOST` to your desired target:

```sh
HOST=i386-elf ./build.sh
```

- The output files are located at `packer/$(TARGET)`. `packer/$(TARGET)/sysx.iso` is the bootable image.