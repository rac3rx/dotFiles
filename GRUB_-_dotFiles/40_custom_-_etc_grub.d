#!/bin/sh
exec tail -n +3 $0
# This file provides an easy way to add custom menu entries.  Simply type the
# menu entries you want to add after this comment.  Be careful not to change
# the 'exec tail' line above.
menuentry "MacOS X - new" {
insmod hfsplus
set root=(hd1,gpt2)
chainloader /System/Library/CoreServices/boot.efi
boot
}
