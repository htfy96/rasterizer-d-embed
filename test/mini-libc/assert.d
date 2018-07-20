module minilibc.asrt;

import testutil.write;

@nogc:
nothrow:
@trusted:

extern extern(C) void __d_sys_exit(long arg1);

extern(C) void __assert(const char* failexpr, const char* file, uint line) {
    print("Assert failed: ");
    print(failexpr);
    print("\n line ");
    print_num(line);
    print("\n file ");
    print(file);
    print("\n");
    __d_sys_exit(1);
}

