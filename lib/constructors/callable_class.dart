class CallableClass {
  final String name;

  const CallableClass({required this.name});

  // Note: The call function is called by an instance of the class.
  // A class can have only one call() method.
  // You can pass any number of parameters in the call() method.
  String call() {
    return "Object Name: $name";
  }
}
