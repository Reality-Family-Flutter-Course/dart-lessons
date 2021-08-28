main(List<String> args) {
  var rect = Rectangle(2, 5);
  rect.Area();
  rect.Perimeter();

  var square = Square(4);
  square.Area();
  square.Perimeter();
}

abstract class Figure {
  void Area();
  void Perimeter();
}

class Rectangle extends Figure {
  int height;
  int width;

  Rectangle(this.height, this.width);

  @override
  void Area() {
    print('Area of this rectangle is ${height * width}');
  }

  @override
  void Perimeter() {
    print('Perimeter of this rectangle is ${(height + width) * 2}');
  }
}

class Square extends Figure {
  int width;

  Square(this.width);

  @override
  void Area() {
    print('Area of this square is ${width * width}');
  }

  @override
  void Perimeter() {
    print('Perimeter of this square is ${width * 4}');
  }
}
