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
}