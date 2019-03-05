class Foo {
    int a;
    String Greet() =>"Hello Foo!";
}

class Bar extends Foo{
    // override instance variable 
    var a;

    // override instance method 
    @override
    Greet() => "Hello Bar";

    // new method
    Baz() => "Hello Baz";
}

typedef RetString = String Function();
typedef RetDynamic = String Function();

void main() {
    var bar = Bar();
    assert(bar.a is int);
    assert(bar.Greet is RetString);
    assert(bar.Baz is! RetString);
    print("${bar.Baz.runtimeType}");
}
