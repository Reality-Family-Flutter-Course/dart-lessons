main(List<String> args) {
  var tom = Man('Tom', 25);
  var kate = Woman('Kate', 22);

  tom.SayHello();
  kate.SayHello();
}

class Person {
  var name;
  var age;
  var gender;

  Person(this.name, this.age, this.gender);

  Person.undefined() {
    name = 'undefinded';
    age = 0;
    gender = 'none';
  }

  void SayHello() {
    print("My name is $name and i'm $age y.o.");
  }
}

class Man extends Person {
  Man(name, age) : super(name, age, 'Man');

  @override
  void SayHello() {
    print("My name is $name, i'm $age y.o. man");
  }
}

class Woman extends Person {
  Woman(name, age) : super(name, age, 'Woman');

  @override
  void SayHello() {
    print("My name is $name, i'm $age y.o. woman");
  }
}
