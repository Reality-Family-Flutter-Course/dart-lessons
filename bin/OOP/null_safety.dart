void main() {
  Person? sam = Person.undefined();
  print(sam);
  Person tom;
  //print(tom);

  //sam.name = 'Sam';
  sam.name = 'Sam';
  print(sam.name);
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
