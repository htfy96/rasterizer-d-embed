module app;

@nogc:
nothrow:

@safe
void sort(int[] arr) {
    int[216] w = 1;
    int[3] ww = [1, 3, 2];
    import std.algorithm, std.range;
    auto r = 100.iota.stride(2).take(5);
    for(int i=0; i<arr.length; ++i)
        for (int j=i+1; j<arr.length; ++j)
            if (arr[i] > arr[j]) {
                int k = arr[i];
                arr[i] = arr[j];
                arr[j] = k;
            }
}

