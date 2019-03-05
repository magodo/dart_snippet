class Person {
    final String _name;
    
    Person(this._name);
    
    String Greet(String who) => "Hello $who, I'm $_name!";
}

class Impostor implements Person {
    get _name => "";
    String Greet(String who) => "Hello $who, I'm no one";
}

void greetMagodo(Person person) => print(person.Greet("magodo"));

void main() {
    greetMagodo(Person("kinoko"));
    greetMagodo(Impostor());
}
