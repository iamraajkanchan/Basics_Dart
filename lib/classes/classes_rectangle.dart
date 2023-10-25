class ClassesRectangle {
  double left, width, top, height;

  ClassesRectangle(this.left, this.width, this.top, this.height);

  double get right => left + width;

  set right(double value) => left = width - value;

  double get bottom => top + height;

  set bottom(double value) => top = height - value;
}
