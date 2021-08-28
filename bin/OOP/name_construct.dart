main() {
  var tom = Person.undefined();
  tom.SayHello();

  tom = Person.Man('Tom', 25);
  tom.SayHello();
}

class Person {
  var name;
  var age;
  var gender;

  Person(this.name, this.age, this.gender);

  Person.Man(this.name, this.age) : gender = 'Male';

  Person.Woman(this.name, this.age) : gender = 'Woman';

  Person.undefined() {
    name = 'undefinded';
    age = 0;
    gender = 'none';
  }

  void SayHello() {
    print("My name is $name and i'm $age y.o.");
  }
}
