void main() {
  // var map = {
  //   1: "Tom",
  //   2: "Bob",
  //   3: "Sam",
  // };

  // print(map);
  // map[2] = "Alice"; // установим значение элемента с ключом 2
  // print(map[2]);
  // print(map);

  var map = {
    "Spain": "Madrid",
    "France": "Paris",
    "Germany": "Berlin",
    "Russia": 'Moscow'
  };
  // print(countries["Spain"]); // Madrid
  // print(countries["Germany"]); // Berlin
  // print(countries["France"]); // Paris
  // print(countries['Russia']);

  // перебор всех элементов
  print("All items");
  for (var item in map.entries) {
    //item представляет MapEntry<K, V>
    print("${item.key} - ${item.value}");
  }

  // перебор ключей
  print("Keys");
  for (var key in map.values) {
    print(key);
  }
}
