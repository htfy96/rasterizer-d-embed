module main;
import app;

void main() {
    int[3] arr = [1, 3, 2];
    sort(arr);
    assert(arr.length == 3);
    assert(arr[0] == 1);
    assert(arr[1] == 2);
    assert(arr[2] == 3);
}
