[![pub version](https://img.shields.io/pub/v/greek_string_utils)](https://pub.dev/packages/greek_string_utils)
[![pub publisher](https://img.shields.io/pub/publisher/greek_string_utils)](https://pub.dev/publishers/johnstef.com/packages)

## Usage

```dart
var may = 'Μάιος';
print(may.toGreekUpperCase()); // ΜΑΙΟΣ
print(may.removeGreekEmphasis()); // Μαιος

may = 'Μαΐου';
print(may.toGreekUpperCase()); // ΜΑΪΟΥ
print(may.removeGreekDieresis()); // Μαίου
```
