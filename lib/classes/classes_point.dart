import 'dart:math';

const int valueX = 0;
const int valueY = 0;

class ClassesPoint {
  int? xPosition;
  int? yPosition;

  ClassesPoint(this.xPosition, this.yPosition);

  ClassesPoint.values()
      : xPosition = valueX,
        yPosition = valueY;

  // When you use factory method you can't use final for the class variable.
  ClassesPoint.setValues(int x, int y) {
    this.xPosition = x;
    this.yPosition = y;
  }

  // distanceTo is an instance method.
  double distanceTo(ClassesPoint? other) {
    int? dx = xPosition! - other!.xPosition!;
    int? dy = yPosition! - other.yPosition!;
    return sqrt(dx * dx + dy * dy);
  }
}
