class ClassesRectangle {
  // To set a private variable in Dart, use underscore before the name of the variable.
  final double _width, _height;
  double _left, _top;

  ClassesRectangle(this._left, this._width, this._top, this._height);

  double get right => _left + _width;

  set right(double value) => _left = _width - value;

  double get bottom => _top + _height;

  set bottom(double value) => _top = _height - value;

  double get left => _left;

  double get top => _top;
}
