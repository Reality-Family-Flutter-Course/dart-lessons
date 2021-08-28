main(List<String> args) {
  var tom = Person('Tom', 20, 'Male');
  tom.SayHello();
}

class Person {
  var name;
  var age;
  var gender;
  var _id;

  Person(this.name, this.age, this.gender) : _id = 1;

  Person.undefined() {
    name = 'undefinded';
    age = 0;
    gender = 'none';
    _id = 0;
  }

  void SayHello() {
    print("My name is $name and i'm $age y.o. (id = $_id)");
  }
}
