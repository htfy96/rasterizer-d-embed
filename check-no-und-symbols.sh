#!/bin/bash
set -x
cc -nostdlib -nodefaultlibs -lgcc -nostdinc -fno-use-linker-plugin -fuse-ld=gold -Wl,--whole-archive -r -o /tmp/a.o build/librasterizer-d-embed.a
if nm --undefined-only /tmp/a.o | grep 'U' | egrep -vw '_start|_GLOBAL_OFFSET_TABLE_|__assert|memset|memcmp|memcpy|_memset[[:alnum:]]+'; then
    echo "found missing symbols..."
    exit 1
else
    exit 0
fi
