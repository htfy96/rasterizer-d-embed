# Rasterizer-D-embed
![Build Status](https://circleci.com/gh/htfy96/rasterizer-d-embed.png?circle-token=f9dc8a530f3ff0210b4f83b2879e62c90e4abc55) ![license](https://img.shields.io/github/license/htfy96/rasterizer-d-embed.svg) ![status](https://img.shields.io/badge/Status-WIP-blue.svg)


This project aims at creating a dependency-free (no libphobos/libruntime/libc) static library for 2D graphics on embedded devices.

It is still at very early stage.

## Supported compilers and symbol dependency

This project works with `-betterC`. Moreover, it only depends on a limited set of symbols in libc:

- First-class support for `ldc`. Symbol dependency: `memset`, `memcmp`, `memcpy` and `__assert`
- `dmd` is also supported. Due to [a bug](https://issues.dlang.org/show_bug.cgi?id=17778), `dmd` may generate calls to `_memset*` defined in `d-runtime` even with `-betterC`. You can use the [definition of them in d-runtime](https://github.com/dlang/druntime/blob/master/src/core/memory.d) as a polyfill

[d-rlib](https://github.com/htfy96/d-rlib) is a platform-independent implementation of `memset`/`memcmp`/`memcpy`

## Build and Test
Currently it only supports building with dmd and testing on x86 with stubs provided under `test` directory.

- Use `make builddebug` to build a dependency-free static library under `build/` directory
- Use `make test` to link this library into `test/` stubs and run tests.

Prefix `make` with `DCC=ldc2` will build this project with ldc.
