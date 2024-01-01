typedef LoggerFunction = void Function(String msg);

class FunctionExample {
  // Example of arrow syntax
  bool evenCheck(int value) => value % 2 == 0;

  bool primeCheck(int value) => value % 2 != 0;

  void applyChecker() {
    // In Dart even a function is an object. So you can assign a function to a variable.
    // Always write down the type of the parameter even if it's not required by the compiler.
    bool Function(int) evenChecker = evenCheck;
    // Usage of a variable of Function(int) type.
    print("applyChecker :: evenChecker: ${evenChecker(8)}");
    // You can also use final instead of var.
    var primeChecker = primeCheck;
    // Usage of a variable of Function(int) type.
    print("applyChecker :: primeChecker : ${primeChecker(43)}");
  }

  void anonymousFunctionExample() {
    // Below is an example of anonymous function. An anonymous function doesn't have a name.
    // You can write the function on the go.
    evenChecker(number) => number % 2 == 0;
    print("anonymousFunctionExample :: evenChecker : ${evenChecker(202)}");
    bool primeChecker(number) => number % 2 != 0;
    print("anonymousFunctionExample :: primeChecker : ${primeChecker(423)}");
  }

  // displayItems is a callback function where the parameter action is a function that takes
  // an integer parameter and returns nothing.
  // To set a private method in Dart, use underscore before the name of the method.
  void _displayItems(void Function(int) action) {
    final numberList = [1, 2, 45, 23];
    for (final number in numberList) {
      action(number);
    }
  }

  void callbackFunctionExample() {
    _displayItems((int number) {
      print("callbackFunctionExample :: NumberList :: Number : $number");
    });
  }

  // You can define the default value of a parameter only when the parameter is an optional parameter
  // or an optional positional parameter.
  void _exampleOfOptionalParameter(int? a, {int? b = 0}) {
    print("useOfOptionalParameter :: _exampleOfOptionalParameter :: a : $a");
    print("useOfOptionalParameter :: _exampleOfOptionalParameter :: b : $b");
  }

  void useOfOptionalParameter() {
    _exampleOfOptionalParameter(4, b: 3);
  }

  void _exampleOfOptionalPositionalParameter([int? a = 0, int? b = 0]) {
    print(
        "useOfPositionalParameter :: _exampleOfOptionalPositionalParameter :: a : $a");
    print(
        "useOfPositionalParameter :: _exampleOfOptionalPositionalParameter :: b : $b");
  }

  // Note: If your function has two parameters, then you can only define the last parameter
  // as an optional positional parameter. If you define only the first parameter as an optional
  // parameter then it will prompt a compile time error.
  void _exampleWithAnOptionalPositionalParameter(int? a, [int? b]) {
    print(
        "useOfPositionalParameter :: _exampleWithAnOptionalPositionalParameter :: a : $a");
    print(
        "useOfPositionalParameter :: _exampleWithAnOptionalPositionalParameter :: b : $b");
  }

  void useOfPositionalParameter() {
    _exampleOfOptionalPositionalParameter(12);
    _exampleWithAnOptionalPositionalParameter(24);
  }

  void _printIntegerLogs(LoggerFunction logger) {
    logger("Printing an Integer Log");
  }

  void _printDoubleLogs(LoggerFunction logger) {
    logger("Printing a Double Log");
  }

  void useOfTypeDefFunctions() {
    // Because print takes a parameter and returns a void we can use the print reference i.e. print.
    _printIntegerLogs(print);
    _printDoubleLogs(print);
  }
}
