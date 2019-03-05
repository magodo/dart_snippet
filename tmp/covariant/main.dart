class Animal {
    void chase(Animal x) {
        print("chasing ${x.runtimeType}");
    }
}

class Mouse extends Animal {
    final String name;

    Mouse(this.name);
}

class Cat extends Animal {
    void chase(covariant Mouse x) {
        print("cat chasing mouse ${x.name}");
    }
}

void main() {
    final m = Mouse("ranran");
    final c1 = Cat();
    c1.chase(m);
}
