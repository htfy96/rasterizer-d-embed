module testutil.entry;

@nogc
nothrow:
@trusted:

extern(C) void __d_sys_exit(long arg1)
{
    asm @nogc nothrow
    {
        mov RAX, 60;
        mov RDI, arg1;
        syscall;
    }
}

extern extern(C) void main(int, char**);
private extern(C) void _start()
{
    int argc;
    char** argv;
    asm @nogc nothrow
    {
        mov RCX, 24[RSP];
        mov argc, ECX;
        lea RCX, 32[RSP];
        mov argv, RCX;
    }
    main(argc, argv);
    __d_sys_exit(0);
}
