# userspaceLUKS-unlock-LUKS
<br>
FUSE support for LUKS filesystems
<br>
in theory to unlock LUKS volume from unlock-luks.c from "userspaceLUKS" project
<br>
to mount via fuse, ext4 or paragon, as before ,,, and most importantly *to UNLOCK* LUKS encrypted volumes
<br>
http://dl.paragon-software.com/demo/trial_extfs.dmg
<br>
<br>

<br>


 * brew install autoconf
 * brew install automake
 * brew install autogen
 * brew cask install osxfuse
 * brew install openssl
 
```
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
autoreconf --install
autoconf
./configure
cd lib/crypto_backend && make && cd .. && make && cd .. && make
./luks_unlock 
./luks_unlock: device [output]
```
e.g.
<br>
./luks_unlock /dev/disk4s1
<br>
Enter passphrase: 
<br>
Master key unlocked!


