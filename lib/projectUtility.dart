void addSeparation(int count) {
  var i = 0;
  var delimiter = StringBuffer();
  while (i <= count) {
    delimiter.write("=");
    i++;
  }
  print(delimiter.toString());
}
