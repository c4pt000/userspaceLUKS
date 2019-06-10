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
 * brew install ext4fuse
 * brew install openssl
 
 /usr/local/opt/openssl/bin/openssl 
OpenSSL> version
OpenSSL 1.0.2r  26 Feb 2019
 
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

./luks_stats
./luks_stats: device [output]

```
<br>
<br>
<br>
<br>
<br>
e.g.


./luks_unlock /dev/disk5s1
<br>
Enter passphrase: 
<br>
Master key unlocked!
<br>

```
./luks_stats /dev/disk5s1
Magic: "LUKS0xbabe" (good)
Version: 1
Cipher: aes
Cipher Mode: xts-plain64
Hash: sha1
Payload Offset (sectors): 65535
Key Length (bytes): 32
Master Key Digest: 0x11254eb1b78XXXXXXXXXXXXXXXXa420dd7cf388
Masker Key Salt: 0x8c258ad3743ffXXXXXXXXXXXXXXXXXX97ae2e314c3392f754fe34b688
Masker Key Iterations: 77000
UUID: a6f2b67e-3a81-4fd5-b92f-73305ffa8a66
Keyslot	Active	Iterations	Key Offset	Stripes	Salt
0	yes	292237		8		4000	0x9f0000000003XXXXXXXXXXXXXXd2f3470416270445044000035
1	no
2	no
3	no
4	no
5	no
6	no
7	no
```

