// Products - Buttons
import 'dart:math';

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

// Products - Text
abstract class Text {
  void render();
}

class AndroidText implements Text {
  @override
  void render() {
    // TODO: implement render
  }
}

class IOSText implements Text {
  @override
  void render() {
    // TODO: implement render
  }
}

class WebText implements Text {
  @override
  void render() {
    // TODO: implement render
  }
}

// Factories
abstract class UIFactory {
  Button createButton();
  Text createText();
}

class AndroidUI implements UIFactory {
  @override
  Button createButton() {
    return AndroidButton();
  }

  @override
  Text createText() {
    return AndroidText();
  }
}

class IOSUI implements UIFactory {
  @override
  Button createButton() {
    return IOSButton();
  }

  @override
  Text createText() {
    return IOSText();
  }
}

class WebUI implements UIFactory {
  @override
  Button createButton() {
    return WebButton();
  }

  @override
  Text createText() {
    return WebText();
  }
}

void main(List<String> args) {
  late UIFactory factory;
  var OS = Random().nextInt(3);

  switch (OS) {
    case 0:
      factory = AndroidUI();
      break;
    case 1:
      factory = IOSUI();
      break;
    case 2:
      factory = WebUI();
      break;
  }

  print(factory.createText());
  print(factory.createButton());
}
