main() {
  Person tom = Person('Tom', 25, Gender.Man);

  tom.SayHello();
}

enum Gender { Man, Woman, None }

class Person {
  var name;
  var age;
  var gender = Gender.None;

  Person(this.name, this.age, this.gender);

  Person.undefined() {
    name = 'undefinded';
    age = 0;
  }

  void SayHello() {
    print("My name is $name and i'm $age y.o. $gender");
  }
}
