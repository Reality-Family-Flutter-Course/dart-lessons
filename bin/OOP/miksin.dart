main(List<String> args) {
  var tom = Employee('Tom', 25, 'Google');
  tom.introduce();
}

class Person {
  var name = 'undefinded';
  var age = 0;

  Person(this.name, this.age);

  String SayHello() {
    return 'Name is $name \nAge is $age y.o.';
  }
}

mixin Worker {
  var company = 'undefinded';

  String WhereWork() {
    return 'Work in $company';
  }
}

class Employee extends Person with Worker {
  Employee(name, age, company) : super(name, age) {
    this.company = company;
  }

  void introduce() {
    print(SayHello() + '\n' + WhereWork());
  }
}
