# k2t &mdash; keyboard to touch for android studio's emulator on linux
## what
- you press key &mdash; fake virtual finger touches virtual touchscreen
- you unpress key &mdash; fake virtual finger untouches virtual touchscreen
## how
<ol type="1">
<li>make sure you have <a href="https://developer.android.com/studio">android studio</a></li>
<li>make sure you have <a href="https://www.tcl.tk/man/tcl8.6/UserCmd/wish.html"><code>wish</code></a> (package <code>tk</code> in <a href="https://software.opensuse.org/package/tk">opensuse tumbleweed</a> and <a href="https://packages.debian.org/sid/tk">debian</a>) installed</li>
<li><a href="https://github.com/xBZZZZ/k2t/blob/m/k2t_key_map_table_editor.tcl">download <code>k2t_key_map_table_editor.tcl</code></a></a></li>
<li>make <code>k2t_key_map_table_editor.tcl</code> executable (<code>chmod +x '/path/to/k2t_key_map_table_editor.tcl'</code>)</li>
<li>run <code>k2t_key_map_table_editor.tcl</code></li>
<li>click <code>save as</code> button</li>
<li>click <code>enable</code> ckeckbox</li>
<li>save <code>maps.k2t</code> (you can use other file name) to somewhere</li>
<li><table><tr><td>download <code>libk2t_preload.so</code> from <a href="https://github.com/xBZZZZ/k2t/releases/latest">latest release</a></td><th>or</th><td><ol type="1">
<li>create empty directory (I will name it <code>/tmp/asd</code>)</li>
<li>download zig-linux-x86_64-*.tar.xz ("*" means any text here) using first link that looks like zig-linux-x86_64-*.tar.xz in <a href="https://ziglang.org/download/">https://ziglang.org/download/</a> into <code>/tmp/asd</code> (you can use other directory)</li>
<li>open terminal</li>
<li><pre lang="bash">cd '/tmp/asd'</pre></li>
<li>extract zig-linux-x86_64-*.tar.xz:<pre lang="bash">tar -xJf zig-linux-x86_64-*.tar.xz</pre></li>
<li>download this repo:<pre lang="bash">git clone --depth=1 https://github.com/xBZZZZ/k2t.git</pre></li>
<li><pre lang="bash">cd k2t</pre></li>
<li>compile <code>libk2t_preload.so</code>:<pre lang="bash">./build.sh ../zig-linux-x86_64-*/zig</pre></li>
</ol><hr>you now have <code>libk2t_preload.so</code> in <code>/tmp/asd/k2t</code>!</tr></td></table></li>
<li>open terminal</li>
<li><pre lang="bash">cd '/path/to/android sdk directory/emulator/qemu/linux-x86_64'</pre></li>
<li>rename <code>qemu-system-x86_64</code> to <code>qemu-system-x86_64.real</code><pre lang="bash">mv qemu-system-x86_64 qemu-system-x86_64.real</pre></li>
<li>create file <code>qemu-system-x86_64</code>:<pre lang="bash">echo -n '#!/usr/bin/sh
k2t_key_map_table="/path/to/maps.k2t" \
LD_PRELOAD="/path/to/libk2t_preload.so${LD_PRELOAD:+" $LD_PRELOAD"}" \
exec "$0.real" "$@"
' > qemu-system-x86_64</pre>(don't forget to replace <code>/path/to</code>s)</li>
<li>make <code>qemu-system-x86_64</code> executable:<pre lang="bash">chmod +x qemu-system-x86_64</pre></li>
<li>start android virtual device as usual</li>
<li>press <kbd>A</kbd> key, it should simulate touching top left (&nwarr;) corner</li>
</ol><hr>writing to <code>maps.k2t</code> file affects running emulator (exiting and opening emulator not needed)

## extra links
- [key numbers](https://codebrowser.dev/qt5/qtbase/src/corelib/global/qnamespace.h.html#603)
- [android studio's emulator source code](https://android.googlesource.com/platform/external/qemu/+/refs/heads/emu-master-dev)