class InitializerListExample {
  final int _secret;
  final int _superSecret;

  // In this way the constructor is asking for age and weight but, the user has no idea that
  // internally
  InitializerListExample(int age, int weight)
      : _secret = age,
        _superSecret = weight;

  void guessTheWeight() {
    switch (_secret) {
      case 18:
        if (_superSecret > 55) {
          _askToChangePassword();
        } else {
          _askToKeepThePassword();
        }
        break;
      case 28:
        if (_superSecret > 66) {
          _askToChangePassword();
        } else {
          _askToKeepThePassword();
        }
        break;
      case 48:
        if (_superSecret > 83) {
          _askToChangePassword();
        } else {
          _askToKeepThePassword();
        }
        break;
      default:
        _askToKeepThePassword();
    }
  }

  void _askToChangePassword() => print("You have to set the password");

  void _askToKeepThePassword() => print("You have a strong password!");
}
