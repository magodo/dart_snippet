class Foo {
    var a;
    var b = "asdf";

    Foo():
        a = 1;
}

void main() {
    var f = Foo();
    assert(f.a is int);
    assert(f.b is String);
}
