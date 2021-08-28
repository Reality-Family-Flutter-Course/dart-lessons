class Network {
  var url = 'http://example.com';

  static final Network _network = Network._internal();
  factory Network() {
    return _network;
  }

  Network._internal();
}

void main(List<String> args) {
  var net = Network();
  var net1 = Network();

  print(net == net1);
  net.url = "https://example.ru";
  print(net1.url);
}
