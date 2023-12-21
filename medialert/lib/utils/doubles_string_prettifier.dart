sealed class DoublesStringPrettifier {
  static String prettifyDoubleToString(double number) {
    if (number == number.toInt()) {
      return number.toInt().toString();
    } else {
      return number.toString();
    }
  }
}
