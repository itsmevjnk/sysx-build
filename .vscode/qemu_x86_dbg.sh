#!/bin/bash
echo "Starting QEMU:"
qemu-system-i386 -serial stdio -s -S -cdrom $1