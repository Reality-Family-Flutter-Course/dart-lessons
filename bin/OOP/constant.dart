main(List<String> args) {
  var tom = Person('Tom', 25, 15);
  tom.SayHello();

  var sam = Person.undefined()
    ..name = 'Sam'
    ..age = 20
    ..SayHello();
}

class Person {
  var name;
  var age;
  final id;

  //Person(this.name, this.age, this.id);

  Person(this.name, this.age, personId) : id = personId + 1;

  Person.undefined() : id = 1 {
    name = 'undefinded';
    age = 0;
  }

  void SayHello() {
    print("My name is $name, i'm $age y.o. and my id is $id");
  }
}
