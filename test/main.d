module main;
import app;
import miniruntime.write;

@nogc:
nothrow:

@safe
extern(C)
void main(int argc, char** argv) {
    int[3] arr = [1, 3, 2];
    print_num(argc);
    sort(arr);
    assert(arr.length == 3);
    assert(arr[0] == 1);
    assert(arr[1] == 2);
    assert(arr[2] == 3);
}
