// superHeroes is a list.
import 'dart:math';

import 'package:cli/projectUtility.dart';

final superHeroes = <String>[];

void addSuperHeroes() {
  superHeroes.add("Spider Man");
  superHeroes.add("Iron Man");
  superHeroes.add("He Man");
  superHeroes.add("Super Man");
  superHeroes.add("Wonder Woman");
  superHeroes.add("Hulk");
}

void showSuperHeroes() {
  int i = 1;
  for (String name in superHeroes) {
    print("Super Hero $i : $name");
    i++;
  }
}

// superVillain is a set
final superVillain = <String>{};

void addSuperVillain() {
  superVillain.add("Lex Luther");
  superVillain.add("Thanos");
  superVillain.add("Skeletor");
  superVillain.add("Doctor Doom");
  superVillain.add("Skeletor");
  superVillain.add("Magneto");
}

void showSuperVillains() {
  int i = 1;
  for (String name in superVillain) {
    print("Super Villain $i : $name");
    i++;
  }
}

// heroVillainGroup is a Map
final heroVillainGroup = <String, String>{};

void addHeroVillainGroup() {
  heroVillainGroup[
          superHeroes.firstWhere((element) => element == "Super Man")] =
      superVillain.firstWhere((element) => element == "Lex Luther");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "Iron Man")] =
      superVillain.firstWhere((element) => element == "Thanos");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "He Man")] =
      superVillain.firstWhere((element) => element == "Skeletor");
  heroVillainGroup[
          superHeroes.firstWhere((element) => element == "Wonder Woman")] =
      superVillain.firstWhere((element) => element == "Magneto");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "Hulk")] =
      superVillain.firstWhere((element) => element == "Doctor Doom");
}

void showHeroVillainGroup() {
  for (String key in heroVillainGroup.keys) {
    print("$key : ${heroVillainGroup[key]}");
  }
}

class ListExample {
  void simulate() {
    addSeparation(100);
    createGrowableList();
    addSeparation(100);
    createFilledList();
    addSeparation(100);
    createEmptyList();
    addSeparation(100);
    fillEmptyList();
    addSeparation(100);
    createUnmodifiableList();
    addSeparation(100);
    createGeneratedList();
    addSeparation(100);
    useSpreadOperator();
    addSeparation(100);
    useIfStatementToCreateList("even");
    addSeparation(100);
    useForStatementToCreateList();
    addSeparation(100);
  }

  void createGrowableList() {
    final growableList = [];
    growableList.add(2);
    growableList.add(0);
    printList("createGrowableList", growableList);
  }

  void createFilledList() {
    final filledList = List<int>.filled(5, 0, growable: true);
    filledList.add(2);
    printList("createFilledList", filledList);
  }

  void createEmptyList() {
    final emptyList = List<int>.empty();
    try {
      emptyList.add(3);
    } on UnsupportedError catch (exc) {
      print(exc.toString());
      print("Cannot add an element in an empty list");
    }
    printList("createEmptyList", emptyList);
  }

  void fillEmptyList() {
    final emptyList = List<int>.empty(growable: true);
    emptyList.add(3);
    printList("fillEmptyList", emptyList);
  }

  void createUnmodifiableList() {
    final unModifiableList = List<int>.unmodifiable([1, 3, 4]);
    try {
      unModifiableList.add(6);
    } on UnsupportedError catch (exc) {
      print(exc.toString());
      print("Cannot add an element in an empty list");
    }

    printList("createUnmodifiableList", unModifiableList);
  }

  void createGeneratedList() {
    final generatedList =
        List<int>.generate(10, (index) => pow(2, index) as int);
    printList("createGeneratedList", generatedList);
  }

  void useSpreadOperator() {
    final unModifiableList = List<int>.unmodifiable([9, 4, 6]);
    final numberList = [3, 9, ...unModifiableList];
    printList("useSpreadOperator", numberList);
  }

  void useIfStatementToCreateList(String numberType) {
    final listFromIfStatement = [
      2,
      4,
      5,
      6,
      if (numberType == "even") 8 else 7
    ];
    printList("useIfStatementToCreateList", listFromIfStatement);
  }

  void useForStatementToCreateList() {
    final listFromForStatement = [0, for (var i = 1; i < 25; i++) i];
    printList("useForStatementToCreateList", listFromForStatement);
  }

  void printList(String method, final numbers) {
    for (final number in numbers) {
      print("ListExample :: printList :: $method :: $number");
    }
  }
}
