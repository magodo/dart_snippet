void Foo(int a) => print("$a (${a.runtimeType})");

void main() {
    final num a = 1;
    Foo(a);
}
