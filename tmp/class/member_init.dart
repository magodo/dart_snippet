class Foo {
    var a = 1; // 初始化时间早于构造函数的初始化列表和函数体
    int b;
    Foo(this.b) {
        print("ctor: a = $a, b = $b");
    }
}

void main() {
    final f = Foo(2);
    assert(f != null);
}
