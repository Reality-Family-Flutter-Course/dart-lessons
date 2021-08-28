class Animal {
  var name;
  Animal(this.name);
}

class Lion extends Animal {
  Lion(var name) : super(name);
  int LionLegCount() => 4;
}

class Pigeon extends Animal {
  Pigeon(var name) : super(name);
  int PigeonLegCount() => 2;
}

class Snake extends Animal {
  Snake(var name) : super(name);
  int SnakeLegCount() => 0;
}

// main(List<String> args) {
//   var animals = [
//     Lion('Lion'),
//     Pigeon('Pigeon'),
//     Snake('Snake'),
//   ];

//   int AnimalLegCount() {
//     var legs = 0;

//     for (var animal in animals) {
//       if (animal is Lion) {
//         legs += animal.LionLegCount();
//       } else if (animal is Pigeon) {
//         legs += animal.PigeonLegCount();
//       } else if (animal is Snake) {
//         legs += animal.SnakeLegCount();
//       }
//     }

//     return legs;
//   }
// }

// correct one

abstract class TrueAnimal {
  var name;
  TrueAnimal(this.name);
  int LegCount();
}

class TrueLion extends TrueAnimal {
  TrueLion(var name) : super(name);
  @override
  int LegCount() => 4;
}

class TruePigeon extends TrueAnimal {
  TruePigeon(var name) : super(name);
  @override
  int LegCount() => 2;
}

class TrueSnake extends TrueAnimal {
  TrueSnake(var name) : super(name);
  @override
  int LegCount() => 0;
}

void main(List<String> args) {
  var animals = [
    TrueLion('Lion'),
    TruePigeon('Pigeon'),
    TrueSnake('Snake'),
  ];

  int AnimalLegCount() {
    var legs = 0;

    animals.forEach((element) {
      legs += element.LegCount();
    });

    return legs;
  }
}
