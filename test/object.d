module object;

@nogc:
nothrow:

extern(C) void __d_sys_exit(long arg1)
{
    asm @nogc nothrow
    {
        mov RAX, 60;
        mov RDI, arg1;
        syscall;
    }
}

extern void main();
private extern(C) void _start()
{
    main();
    __d_sys_exit(0);
}

extern(C) void __assert(const char* file, int line, const char* failedexpr) {
    __d_sys_exit(1);
}
