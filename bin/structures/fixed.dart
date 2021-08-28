void main() {
  // var light = [3]; // не фиксированный список [3]
  // light.add(1);
  // light.add(4);
  // light.add(5);
  // for (var n in light) {
  //   print(n);
  // }

  var fixed = List.generate(4, (index) => index,
      growable: false); // фиксированный список [0, 1, 2, 3]
  print(fixed);
  fixed[0] = 3;
  fixed[1] = 7;
  fixed[2] = 11;
  fixed[3] = 15;
  fixed.add(1); // нельзя добавить новый элемент

  for (var n in fixed) {
    print(n);
  }
}
