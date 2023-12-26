import 'classes_point.dart';
class ClassesTriangle {
  late List<ClassesPoint> vertices;
  ClassesTriangle(this.vertices);
  void showVertex() {
    print("Showing Vertex of a Triangle");
    for(ClassesPoint vertex in vertices) {
      print("x: ${vertex.xPosition}, y: ${vertex.yPosition}");
    }
  }
  // Dart doesn't support method overloading so you cannot have multiple methods with the same name
  // void showVertex(int top, int right, int bottom, int left) {}
}