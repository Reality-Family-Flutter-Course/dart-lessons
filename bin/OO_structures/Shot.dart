class Editor {
  var _text, _curX, _curY, _selectionWidth;

  void text(var value) => _text = value;
  void cursor(var valueX, var valueY) {
    _curX = valueX;
    _curY = valueY;
  }

  void selectionWidth(var value) => _selectionWidth = value;

  Snapshot createSnapshot() {
    return Snapshot(
      this,
      _text,
      _curX,
      _curY,
      _selectionWidth,
    );
  }
}

class Snapshot {
  Editor _editor;
  var _text, _curX, _curY, _selectionWidth;

  Snapshot(
    this._editor,
    this._text,
    this._curX,
    this._curY,
    this._selectionWidth,
  );

  void restore() {
    _editor.text(_text);
    _editor.cursor(_curX, _curY);
    _editor.selectionWidth(_selectionWidth);
  }
}

class Command {
  Snapshot? _backup;

  void makeBackup(Editor editor) {
    _backup = editor.createSnapshot();
  }

  void undo() {
    if (_backup != null) {
      _backup!.restore();
    }
  }
}
