import '../lib/classes/classes_point.dart';
import '../lib/classes/classes_square.dart';
import '../lib/classes/classes_triangle.dart';
import '../lib/collections/collections.dart';

void main(List<String> arguments) {
  simulatorOfClasses();
}

void simulatorOfCollections() {
  print("Showing Super Heroes");
  addSuperHeroes();
  showSuperHeroes();
  print("");
  print("Showing Super Villains");
  addSuperVillain();
  showSuperVillains();
  print("");
  print("Showing Hero Villain Group");
  addHeroVillainGroup();
  showHeroVillainGroup();
}

void simulatorOfClasses() {
  ClassesPoint firstPosition = new ClassesPoint(2, 3);
  ClassesPoint secondPosition = new ClassesPoint(5, 6);
  ClassesPoint thirdPosition = new ClassesPoint(9, 10);
  ClassesPoint fourthPosition = new ClassesPoint(6, 4);
  List<ClassesPoint> points = [
    firstPosition,
    secondPosition,
    thirdPosition,
    fourthPosition
  ];
  ClassesSquare square = ClassesSquare(points);
  square.showPoints();
  Set<ClassesPoint> vertices = {firstPosition, secondPosition, thirdPosition};
  ClassesTriangle triangle = ClassesTriangle(vertices.toList());
  triangle.showVertex();
}
