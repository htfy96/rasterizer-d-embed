#!/bin/bash
set -x
cc -nostdlib -nodefaultlibs -lgcc -nostdinc -fno-use-linker-plugin -fuse-ld=gold -Wl,--whole-archive -r -o /tmp/a.o build/libd-rlib.a
if nm --undefined-only /tmp/a.o | grep 'U' | egrep -v '_start|_GLOBAL_OFFSET_TABLE_'; then
    echo "found missing symbols..."
    exit 1
else
    exit 0
fi
