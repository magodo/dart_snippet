int foo() {
    print('foo');
    return 1;
}

class Base {
    Base() {
        print("Base");
    }
}

class Derived extends Base {
    final int f;
    // 1. 子类构造函数默认会自动调用父类的unnamed, no-argument 构造函数
    // 2. 构造函数的执行顺序：
    //    - 子类构造函数的初始化列表
    //    - 父类unnamed, no-argument 构造函数
    //    - 子类构造函数体
    Derived(): f = foo() {
        print("Derived");
    }
}

void main() {
    var d = Derived();
}
