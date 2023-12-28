import '../projectUtility.dart';

class Skill {
  late final String? _skillName;
  late final int? _experience;

  Skill(this._skillName, this._experience);

  Skill copyWith() => Skill(_skillName, _experience);

  Skill.itSkill(int exp) : this("Information Technology", exp);

  Skill.contentSkill(int exp)
      : _skillName = "Content Creation",
        _experience = exp;

  Skill.graphicSkill(int exp) {
    _skillName = "Graphic Designer";
    _experience = exp ?? 0;
  }
}

class Candidate {
  final String _candidateName;
  final int _age;
  final List<Skill> _skills;
  final List<int> _marks;

  const Candidate(this._candidateName, this._age, this._skills, this._marks);

  Candidate copyWith(
          {String? candidateName,
          int? age,
          List<Skill>? skills,
          List<int>? marks}) =>
      Candidate(
          candidateName ?? _candidateName,
          age ?? _age,
          skills ?? []..addAll(_skills.map((e) => e.copyWith()).toList()),
          marks ?? []
            ..addAll(_marks));

  @override
  String toString() {
    var result = StringBuffer();
    result.write("Candidate Name: $_candidateName\n");
    result.write("Candidate Age: $_age\n");
    for (final skill in _skills) {
      result.write("Candidate Skill : ${skill._skillName}\n");
      result.write("Candidate Skill Experience : ${skill._experience}\n");
    }
    for (final mark in _marks) {
      result.write("Candidate Mark : $mark\n");
    }
    return result.toString();
  }
}

class CloningObjectSimulator {
  // An instance of Skill class.
  final Skill _itSkill = Skill.itSkill(4);

  // An instance of Skill class.
  final Skill _contentSkill = Skill.contentSkill(3);

  // An instance of Skill class.
  final Skill _graphicSkill = Skill.graphicSkill(2);

  // Note: For non-primitive types, you cannot use an instance of a class to create a list in an initializer.
  // So the following example of creating a list throws a compile time error.
  // List<Skill> candidateSkills = [itSkill, contentSkill];

  void cloneCandidates() {
    final firstCandidate =
        Candidate("Johny Page", 29, [_itSkill, _contentSkill], [84, 59]);
    print(firstCandidate.toString());
    addSeparation(100);
    final secondCandidate = firstCandidate
        .copyWith(candidateName: "Emily Willis", skills: [_graphicSkill], marks: [73]);
    print(secondCandidate.toString());
    addSeparation(100);
  }
}
