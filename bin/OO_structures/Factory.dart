// Products
abstract class Button {
  void render();
  void onClick();
}

class AndroidButton implements Button {
  @override
  void onClick() {
    // TODO: implement onClick
  }

  @override
  void render() {
    // TODO: implement render
  }
}

class IOSButton implements Button {
  @override
  void onClick() {
    // TODO: implement onClick
  }

  @override
  void render() {
    // TODO: implement render
  }
}

class WebButton implements Button {
  @override
  void onClick() {
    // TODO: implement onClick
  }

  @override
  void render() {
    // TODO: implement render
  }
}

// Factories
abstract class UIFactory {
  Button createButton();
}

class AndroidUI implements UIFactory {
  @override
  Button createButton() {
    return AndroidButton();
  }
}

class IOSUI implements UIFactory {
  @override
  Button createButton() {
    return IOSButton();
  }
}

class WebUI implements UIFactory {
  @override
  Button createButton() {
    return WebButton();
  }
}

void main(List<String> args) {
  UIFactory? factory;
  var config = "Web";

  if (config == "Android") {
    factory = AndroidUI();
  } else if (config == "IOS") {
    factory = IOSUI();
  } else if (config == "Web") {
    factory = WebUI();
  } else {
    factory = null;
  }

  print(factory?.createButton());
}
