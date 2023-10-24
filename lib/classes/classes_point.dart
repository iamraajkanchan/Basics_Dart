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
}
