main(List<String> args) {
  var sam = Person.undefined()
    ..name = 'Sam'
    ..gender = 'Male'
    ..age = 20
    ..SayHello();

  var tom = Person.undefined()
    ..name = 'Tom'
    ..age = 25
    ..gender = 'Male'
    ..SayHello();
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
