import 'dart:math';

import 'package:cli/classes/classes_point.dart';
import 'package:cli/classes/classes_rectangle.dart';
import 'package:cli/classes/classes_square.dart';
import 'package:cli/classes/classes_triangle.dart';
import 'package:cli/collections/collections.dart';
import 'package:cli/enums/enums.dart';

void main(List<String> arguments) {
  simulatorOfEnums();
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
  print(
      "Value of instance variables of new ClassPoint instance after using overridden + operator");
  print("x: ${sumPosition.xPosition}, y: ${sumPosition.yPosition}");
  ClassesPoint diffPosition = secondPosition - firstPosition;
  print(
      "Value of instance variables of new ClassPoint instance after using overridden - operator");
  print("x: ${diffPosition.xPosition}, y: ${diffPosition.yPosition}");
  print("Comparison of instances of ClassPoint using overridden == operator");
  print("${diffPosition == sumPosition}");
  print("Value of Rectangles");
  ClassesRectangle rectangle = ClassesRectangle(3, 10, 6, 20);
  print("Example of using getter of a class.");
  print(
      "Right: ${rectangle.right}, Left: ${rectangle.left}, Top: ${rectangle.top}, Bottom: ${rectangle.bottom}");
  rectangle.right = 20.0;
  print("Example of using setter of a class.");
  print(
      "Right: ${rectangle.right}, Left: ${rectangle.left}, Top: ${rectangle.top}, Bottom: ${rectangle.bottom}");
}

void simulatorOfEnums() {
  EnumExample example = EnumExample(vehicle: AutoMobile.bike);
  example.displayYourVehicle();
}
