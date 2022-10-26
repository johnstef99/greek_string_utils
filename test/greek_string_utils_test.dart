import 'package:greek_string_utils/greek_string_utils.dart';
import 'package:test/test.dart';

void main() {
  group('GreekStringUtils Extension', () {
    test('Capitalize Empty', () {
      expect(''.toGreekUpperCase(), '');
    });
    test('Capitalize non greek chars', () {
      expect('May'.toGreekUpperCase(), 'MAY');
    });
    test('Capitalize', () {
      expect('Μάιος'.toGreekUpperCase(), 'ΜΑΙΟΣ');
    });
    test('Capitalize with emphasis and dieresis', () {
      expect('Μαΐου'.toGreekUpperCase(), 'ΜΑΪΟΥ');
    });

    test('Remove emphasis Empty', () {
      expect(''.removeGreekEmphasis(), '');
    });
    test('Remove emphasis non greek chars', () {
      expect('May'.removeGreekEmphasis(), 'May');
    });
    test('Remove emphasis', () {
      expect('Μάιος'.removeGreekEmphasis(), 'Μαιος');
    });
    test('Remove emphasis with dieresis', () {
      expect('Μαΐου'.removeGreekEmphasis(), 'Μαϊου');
    });

    test('Remove dieresis Empty', () {
      expect(''.removeGreekDieresis(), '');
    });
    test('Remove dieresis non greek chars', () {
      expect('May'.removeGreekDieresis(), 'May');
    });
    test('Remove dieresis', () {
      expect('Αϊδόνι'.removeGreekDieresis(), 'Αιδόνι');
    });
    test('Remove dieresis with emphasis', () {
      expect('Μαΐου'.removeGreekDieresis(), 'Μαίου');
    });
  });
}
