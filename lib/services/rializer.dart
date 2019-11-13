import 'package:intl/intl.dart';

class Rializer {
  static String rialize(number) {
    final formatter = new NumberFormat("#,###");
    return formatter.format(number);
  }
}