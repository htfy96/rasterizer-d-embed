#!/bin/bash
cc -nostdlib -nodefaultlibs -lgcc -nostdinc -fuse-ld=gold -Wl,-e,_start "$DUB_TARGET_PATH/lib$DUB_TARGET_NAME.a" -o "$DUB_TARGET_PATH/$DUB_TARGET_NAME"
