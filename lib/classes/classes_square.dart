import 'classes_point.dart';
class ClassesSquare {
  List<ClassesPoint> points = [];
  ClassesSquare(this.points);
  void showPoints() {
    print("Showing Points of a Square");
    for(ClassesPoint point in points) {
      print("x: ${point.xPosition}, y: ${point.yPosition}");
    }
  }
}