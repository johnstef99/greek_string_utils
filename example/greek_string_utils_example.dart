import 'package:greek_string_utils/greek_string_utils.dart';

void main() {
  var may = 'Μάιος';
  print(may.toGreekUpperCase()); // ΜΑΙΟΣ
  print(may.removeGreekEmphasis()); // Μαιος

  may = 'Μαΐου';
  print(may.toGreekUpperCase()); // ΜΑΙΟΥ
  print(may.removeGreekDieresis()); // Μαίου
}
