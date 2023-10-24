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
  ClassesPoint firstPosition = ClassesPoint.setValues(4, 3);
  ClassesPoint secondPosition = ClassesPoint(5, 6);
  ClassesPoint thirdPosition = ClassesPoint(9, 10);
  ClassesPoint fourthPosition = ClassesPoint(6, 4);

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
  print("Showing distance between one point object to another point object.");
  print(firstPosition.distanceTo(secondPosition));
  print("Showing example of operator overriding.");
  ClassesPoint sumPosition = firstPosition + secondPosition;
  print("Value of instance variables of new ClassPoint instance after using overridden + operator");
  print("x: ${sumPosition.xPosition}, y: ${sumPosition.yPosition}");
  ClassesPoint diffPosition = secondPosition - firstPosition;
  print("Value of instance variables of new ClassPoint instance after using overridden - operator");
  print("x: ${diffPosition.xPosition}, y: ${diffPosition.yPosition}");
  print("Comparison of instances of ClassPoint using overridden == operator");
  print("${diffPosition == sumPosition}");
}
