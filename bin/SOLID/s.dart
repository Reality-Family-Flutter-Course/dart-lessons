import 'dart:html';

// Wrong

class Animal {
  var name;

  Animal(this.name);
  String getAnimalName() {
    return name;
  }

  void saveAnimal(var animal) {
    // save animal in DB
  }
  void getAnimal(var name) {
    // get animal from DB
  }
}

// Correct one

class TrueAnimal {
  var name;

  TrueAnimal(this.name);
  String getAnimalName() {
    return name;
  }
}

class AnimalDB {
  TrueAnimal getAnimal() {
    return TrueAnimal('name');
  }

  void saveAnimal(TrueAnimal animal) {
    // save animal in DB
  }
}
