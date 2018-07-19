# Rasterizer-D-embed

This project aims at creating a dependency-free (no libphobos/libruntime/libc) static library for 2D graphics on embedded devices.

It is still at very early stage.

## Build and Test
Currently it only supports building with dmd and testing on x86 with stubs provided under `test` directory.

- Use `make builddebug` to build a dependency-free static library under `build/` directory
- Use `make test` to link this library into `test/` stubs and run tests.
