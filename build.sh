#!/usr/bin/sh

if [ 1 != "$#" ]
then echo 'usage: ./build.sh /path/to/zig'
exit 1
fi

exec "$1" build-lib \
-target x86_64-linux-gnu \
-fstrip \
-dynamic \
-O ReleaseFast \
k2t_preload.zig