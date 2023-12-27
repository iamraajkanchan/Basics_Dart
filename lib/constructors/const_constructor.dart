class ConstConstructor {
  final String name;
  final String comicName;

  const ConstConstructor(this.name, this.comicName);

  @override
  String toString() {
    final result =
        "ConstConstructor :: Name : $name, :: Comic Name : $comicName";
    return result;
  }
}
