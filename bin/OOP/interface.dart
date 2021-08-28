main(List<String> args) {
  var tom = Employee('Tom', 25, 'Google');
  tom.introduce();
}

class Person {
  var name = 'undefinded';
  var age = 0;

  String SayHello() {
    return 'Name is $name \n Age is $age y.o.';
  }
}

class Worker {
  var company = 'undefinded';

  String WhereWork() {
    return 'Work in $company';
  }
}

class Employee implements Person, Worker {
  Employee(this.name, this.age, this.company);

  @override
  int age;

  @override
  String company;

  @override
  String name;

  @override
  String SayHello() {
    return 'Employee name is $name \nEmployee age is $age y.o.';
  }

  @override
  String WhereWork() {
    return 'Employee is working in $company';
  }

  void introduce() {
    print(SayHello() + '\n' + WhereWork());
  }
}
