#!/bin/bash
autoreconf --install
autoconf 
./configure 
cd lib/crypto_backend/
make -j16
cd ..
make -j16
cd ..

