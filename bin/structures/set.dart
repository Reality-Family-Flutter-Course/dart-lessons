void main() {
  var set = {1, 2, 3, 5};

  for (var n in set) {
    print(n);
  }

  // var stringSet = {"Tom", "Alice", "Kate"};
  // for (var s in stringSet) {
  //   print(s);
  // }

  print("");

  set.add(3); // добавляем один элемент - 3
  set.addAll({4, 5}); // добавляем другой набор - {4, 5}
  for (var n in set) {
    print(n); // 1 2 3 5 4
  }
}
