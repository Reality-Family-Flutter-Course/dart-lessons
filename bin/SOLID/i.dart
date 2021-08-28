abstract class Shape {
  double Area();
  double Perimetr();
  double Diameter();
  double LineLong();
}

class Square implements Shape {
  double side;
  Square(this.side);

  @override
  double Area() => side * side;

  @override
  double Perimetr() => side * 4;

  @override
  double Diameter() {
    throw UnimplementedError();
  }

  @override
  double LineLong() {
    throw UnimplementedError();
  }
}

class Ring implements Shape {
  double radius;

  Ring(this.radius);

  @override
  double Area() => 3.14 * radius * radius;

  @override
  double Perimetr() {
    throw UnimplementedError();
  }

  @override
  double Diameter() => radius * 2;
  @override
  double LineLong() => 2 * 3.14 * radius;
}

// Correct

abstract class AllShapes {
  double Area();
}

abstract class CircleShape extends AllShapes {
  double Diameter();
  double LineLong();
}

abstract class AngleShapes extends AllShapes {
  double Perimetr();
}

class Rect implements AngleShapes {
  double height;
  double width;

  Rect(this.height, this.width);

  @override
  double Area() => width * height;

  @override
  double Perimetr() => (width + height) * 2;
}

class Circle implements CircleShape {
  double radius;

  Circle(this.radius);

  @override
  double Area() => 3.14 * radius * radius;
  @override
  double Diameter() => radius * 2;
  @override
  double LineLong() => 2 * 3.14 * radius;
}
