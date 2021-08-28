class TCPRequests {
  void request(var url, var type) {
    // some request logic
  }
}

class HttpRequests {
  TCPRequests service;

  HttpRequests(this.service);

  void post(var url) {
    service.request(url, 'POST');
  }

  void get(var url) {
    service.request(url, 'GET');
  }
}

// Correct

abstract class Request {
  void request(var url, var type);
}

class JSONRequests implements Request {
  @override
  void request(var url, var type) {
    // some request logic
  }
}

class XMLRequests implements Request {
  @override
  void request(var url, var type) {
    // some request logic
  }
}

class HTTPRequests {
  Request service;

  HTTPRequests(this.service);

  void post(var url) {
    service.request(url, 'POST');
  }

  void get(var url) {
    service.request(url, 'GET');
  }
}
