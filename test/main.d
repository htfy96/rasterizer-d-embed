module main;
import app;

@nogc:
nothrow:

@trusted void test_ok() {
    import core.stdc.stdio : printf;
    printf("Test OK!\n");
}

@safe
extern(C) void main(int argc, char** argv) {
    int[3] arr = [1, 3, 2];
    sort(arr);
    assert(arr.length == 3);
    assert(arr[0] == 1);
    assert(arr[1] == 2);
    assert(arr[2] == 3);
    test_ok();
}
