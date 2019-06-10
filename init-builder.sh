#!/bin/bash

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

autoreconf --install
autoconf 
./configure 
cd lib/crypto_backend && make && cd .. && make && cd .. && make


