module testutil.write;

@nogc:
nothrow:
@trusted:

void print_num(int val)
{
    enum base = 10;
    char[11] buf = '0';
    buf[$-1] = '\n';
    auto gptr = buf.ptr + buf.length - 1;
    do {
      *(--gptr) = (val % base) + '0';
      val /= base;
    } while(val);
    print(buf.ptr, buf.length);
}

void print(const char* c)
{
    print(c, c.strlen);
}

void print(const char* c, size_t len)
{
    asm @nogc nothrow
    {
        mov RDX, len;
        mov RSI, c;
        mov RAX, 1; // write
        mov RDI, RAX;
        syscall;
    }
}

size_t strlen(const char* c)
{
    auto cptr = cast(char*) c;
    size_t i;
    while (*cptr != 0)
    {
        cptr++;
        i++;
    }
    return i;
}
