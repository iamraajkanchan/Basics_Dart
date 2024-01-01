import 'package:cli/classes/classes_point.dart';
import 'package:cli/classes/classes_rectangle.dart';
import 'package:cli/classes/classes_square.dart';
import 'package:cli/classes/classes_triangle.dart';
import 'package:cli/collections/collections.dart';
import 'package:cli/constructors/callable_class.dart';
import 'package:cli/constructors/cloning_object.dart';
import 'package:cli/constructors/const_constructor.dart';
import 'package:cli/constructors/factory_constructor.dart';
import 'package:cli/constructors/fractions.dart';
import 'package:cli/control_flow/control_flow.dart';
import 'package:cli/enums/enums.dart';
import 'package:cli/functions/function_example.dart' as function;
import 'package:cli/inheritance/abstraction.dart';
import 'package:cli/inheritance/comparable_example.dart';
import 'package:cli/inheritance/extension_method.dart';
import 'package:cli/inheritance/inheritance_example.dart';
import 'package:cli/inheritance/mixins_example.dart';
import 'package:cli/null_types/null_type.dart';
import 'package:cli/projectUtility.dart';
import 'package:cli/relational_operator/relational_operator.dart';

void main(List<String> arguments) async {
  simulatorForComparator();
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
  EnumExample example = EnumExample(AutoMobile.car);
  example.displayYourVehicle();
}

void simulatorOfNullTypes() {
  NullTypeExample example = NullTypeExample();
  example.howToDeclareNonNullableVariable();
  example.howToDeclareNullableVariable();
  example.useDefaultNullValueCondition();
}

void simulatorForRelationalOperator() {
  RelationalOperator example = RelationalOperator();
  example.checkForBothNullVariable();
  example.checkForOneNullVariable();
}

void simulatorForControlFlow() {
  ControlFlow example = ControlFlow();
  example.switchWithBreak(2);
  example.switchWithoutBreak(2);
  example.switchWithTwoCombinedCondition(2);
}

void simulatorForFunctionExample() {
  function.FunctionExample example = function.FunctionExample();
  // Using cascade operator to call void functions of the class.
  example
    ..applyChecker()
    ..anonymousFunctionExample()
    ..callbackFunctionExample()
    ..useOfOptionalParameter()
    ..useOfPositionalParameter()
    ..useOfTypeDefFunctions();
}

void simulatorForConstructor() {
  FractionsWithPublicProperties firstFraction =
      FractionsWithPublicProperties(nominator: 1, denominator: 3);
  firstFraction.showFraction();
  FractionsWithPublicProperties secondFraction =
      FractionsWithPublicProperties.whole(4);
  secondFraction.showFraction();
  FractionsWithPrivateProperties thirdFraction =
      FractionsWithPrivateProperties(32, 6);
  thirdFraction.showFraction();
  FactoryConstructor firstFactoryConstructor = FactoryConstructor('Spider-Man');
  addSeparation(100);
  FactoryConstructor secondFactoryConstructor = FactoryConstructor("He-Man");
  addSeparation(100);
  FactoryConstructor thirdFactoryConstructor = FactoryConstructor("Iron-Man");
  addSeparation(100);
  FactoryConstructor fourthFactoryConstructor =
      FactoryConstructor("Spider-Man");
  addSeparation(100);
  AnotherFactoryConstructor fifthFactoryConstructor =
      AnotherFactoryConstructor(20);
  fifthFactoryConstructor.getA();
  final superMan = ConstConstructor("Clark Kent", "Super Man");
  const List<ConstConstructor> superHeroList = [
    ConstConstructor("Peter Parker", "Spider Man"),
    ConstConstructor("Barry Allen", "Flash")
  ];
  // As this is a const variable you cannot add another element in it.
  // superHeroList.add(superMan);
  final List<ConstConstructor> newSuperHeroList = [
    ConstConstructor("Peter Parker", "Spider Man"),
    ConstConstructor("Barry Allen", "Flash")
  ];
  // As this is a final variable you can add another element in it.
  newSuperHeroList.add(superMan);
  for (ConstConstructor member in superHeroList) {
    print(member.toString());
  }
  addSeparation(100);
  for (ConstConstructor member in newSuperHeroList) {
    print(member.toString());
  }
  addSeparation(100);
  CallableClass callableExample = CallableClass(name: "Callable Instance");
  print(callableExample.call());
  addSeparation(100);
  CloningObjectSimulator().cloneCandidates();
}

void simulatorForInheritance() {
  final inheritanceSimulator = InheritanceSimulator();
  inheritanceSimulator.simulateDoubleValue();
  inheritanceSimulator.simulateDoubleFromSuperValue();
  final covariantSimulator = CovariantSimulator();
  covariantSimulator.simulate();
}

void simulatorForAbstraction() {
  final abstractImplementer = AbstractImplementer();
  final abstractSimulator = AbstractSimulator();
  addSeparation(100);
  // As expected you can't access the private overridden method through
  // abstractImplementer object from this file.
  abstractImplementer.firstMethod();
  addSeparation(100);
  abstractSimulator.simulateAbstractionThroughImplement();
  abstractSimulator.simulateAbstractionThroughExtend();
  abstractSimulator.simulateAbstractionThroughBodyLessClass();
}

void simulatorForMixin() {
  final mixinSimulator = MixinSimulator();
  mixinSimulator.showDevQualities();
}

void simulateForExtensionMethod() {
  final extensionSimulator = ExtensionMethod();
  extensionSimulator.simulate();
  /**
   * Output -
   * ExtensionMethod :: firstFraction : 12/1
   *
   * Though this is not the expected output but the
   * default of denominator is set to 1 to learn default
   * constructor which has a body
   * */
}

void simulatorForComparator() {
  final compareSimulator = CompareSimulator();
  compareSimulator.simulate();
}