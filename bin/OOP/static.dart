void main() {
  var tom = Employee('Tom', 63, false);
  var sam = Employee('Sam', 52, true);
  // tom.checkAge();
  // sam.checkAge();

  print(Employee.retirenmentAge);

  Employee.setRetirenmentAge(60);
  tom.checkAge();
  sam.checkAge();

  print(Employee.retirenmentAge);
}

class Employee {
  String name;
  int age;
  bool hardWork;
  static int retirenmentAge = 65;
  static const preferentialRetirenmentAge = 50;

  Employee(this.name, this.age, this.hardWork);

  void checkAge() {
    if (age >= retirenmentAge ||
        (age >= preferentialRetirenmentAge && hardWork)) {
      print('Пора на пенсию');
    } else {
      if (hardWork) {
        print('До пенсии еще ${preferentialRetirenmentAge - age} лет');
      } else {
        print('До пенсии еще ${retirenmentAge - age} лет');
      }
    }
  }

  static void setRetirenmentAge(int value) {
    if (value > 50 && value < 70) {
      retirenmentAge = value;
    } else {
      print('Некорректное значение');
    }
  }
}
