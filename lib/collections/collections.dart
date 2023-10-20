// superHeroes is a list.
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
final heroVillainGroup = Map<String, String>();
void addHeroVillainGroup() {
  heroVillainGroup[superHeroes.firstWhere((element) => element == "Super Man")] = superVillain.firstWhere((element) => element == "Lex Luther");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "Iron Man")] = superVillain.firstWhere((element) => element == "Thanos");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "He Man")] = superVillain.firstWhere((element) => element == "Skeletor");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "Wonder Woman")] = superVillain.firstWhere((element) => element == "Magneto");
  heroVillainGroup[superHeroes.firstWhere((element) => element == "Hulk")] = superVillain.firstWhere((element) => element == "Doctor Doom");
}

void showHeroVillainGroup() {
  for(String key in heroVillainGroup.keys) {
    print("$key : ${heroVillainGroup[key]}");
  }
}
