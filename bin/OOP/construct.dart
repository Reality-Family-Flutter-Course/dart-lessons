main() {
  Person tom = Person();

  Dog simon = Dog('Simon', 5);
  Dog mike = Dog.born('Mike');
  print(simon);
  print(mike);

  //tom.name = 'Tom';
  //tom.age = 25;
  //tom.gender = 'Male';
}

class Person {
  var name;
  var age;
  var gender;

  Person() {
    name = 'undefinded';
    age = 0;
    gender = 'Male';
  }

  //Person(this.name, this.age, this.gender);

  // Person(personName, personAge)
  //     : name = personAge,
  //       age = personAge,
  //       gender = 'none' {
  //   SayHello();
  // }

  void SayHello() {
    print("My name is $name and i'm $age y.o.");
  }
}

class Dog {
  var name;
  var age;

  Dog(this.name, this.age);

  Dog.born(this.name) : age = 0;

  @override
  String toString() {
    return 'Dog name: $name\nDog age: $age';
  }
}
