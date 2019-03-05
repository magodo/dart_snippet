class Animal {
    void chase(Animal a){}
    Animal get parent => Animal();
}

class HoneyBadger extends Animal {
    @override
    void chase(Object a) {}
    @override
    HoneyBadger get parent => HoneyBadger();
}
