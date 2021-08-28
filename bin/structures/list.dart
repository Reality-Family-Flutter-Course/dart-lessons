main(List<String> args) {
  var list = [1, 2, 3];

  list[0] = 4; // Присвоили значение первому элементу
  // print(list[2]); // Вывели последние значение

  //list[3] = 4; // Будет ошибка

  for (var n in list) {
    n *= 2;

    // Вывод массива/списка через For/Each цикл
    print(n);
  }

  print(list);

  print("");

  for (var i = 0; i < list.length; i++) {
    list[i] *= 2;

    // проход по массиву/списку
    print(list[i]);
  }

  print(list);
}
