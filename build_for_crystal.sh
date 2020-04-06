#!/bin/sh

export CC="$WASI_SDK_PATH/bin/clang --sysroot=$WASI_SDK_PATH/share/wasi-sysroot"
export AR="$WASI_SDK_PATH/bin/llvm-ar"
export RANLIB="$WASI_SDK_PATH/bin/llvm-ranlib"
export LD="$WASI_SDK_PATH/bin/wasm-ld"

./configure --host wasm32 \
  --disable-dependency-tracking \
  --enable-utf8 \
  --enable-pcre8 \
  --enable-pcre16 \
  --enable-pcre32 \
  --enable-unicode-properties \
  --disable-shared \
  --disable-cpp

make
