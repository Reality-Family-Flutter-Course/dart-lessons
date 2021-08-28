main(List<String> args) {
  Product apple = Product('123', 'Apple');
  int id1 = apple.id;
  String id2 = apple.id;

  ProductInt pear = ProductInt(123, 'Pear');
  ProductString peach = ProductString('123', 'Peach');

  GenProduct<int> watermelon = GenProduct(123, 'Watermelon');
  GenProduct<String> melon = GenProduct('123', 'Melon');
}

class Product {
  dynamic id;
  String name;

  Product(this.id, this.name);
}

class ProductInt {
  int id;
  String name;

  ProductInt(this.id, this.name);
}

class ProductString {
  String id;
  String name;

  ProductString(this.id, this.name);
}

class GenProduct<T> {
  T id;
  String name;

  GenProduct(this.id, this.name);
}
