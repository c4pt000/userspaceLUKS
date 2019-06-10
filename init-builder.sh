#!/bin/bash
autoreconf --install
autoconf 
./configure 
cd lib/crypto_backend && make && cd .. && make && cd .. && make


