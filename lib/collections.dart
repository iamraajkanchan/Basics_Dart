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
  for(String name in superHeroes) {
    print("Super Hero $i : $name");
    i++;
    if(i > superHeroes.length) {
      break;
    }
  }
}