Future<void> printFoo() async => print(await delayFoo());
//Future<void> printFoo() async => print("foo");

Future<String> delayFoo() =>  Future.delayed(const Duration(seconds: 1), ()=>"Foo");

void main() {
    printFoo();
    print("main");
}
