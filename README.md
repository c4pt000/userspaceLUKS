# userspaceLUKS-unlock-LUKS
<br>
FUSE support for LUKS filesystems
<br>
in theory to unlock LUKS volume from unlock-luks.c from "userspaceLUKS" project
<br>
to mount via fuse, ext4 or paragon, as before
<br>
http://dl.paragon-software.com/demo/trial_extfs.dmg
<br>
<br>

<br>


 * brew install autoconf
 * brew install automake
 * brew install autogen
 * brew install openssl
 
 * export LDFLAGS="-L/usr/local/opt/openssl/lib"
 * export CPPFLAGS="-I/usr/local/opt/openssl/include"
 * export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


autoreconf --install
<br>
autoconf
<br>
./configure
