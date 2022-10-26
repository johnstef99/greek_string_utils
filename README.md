## Usage

```dart
var may = 'Μάιος';
print(may.toGreekUpperCase()); // ΜΑΙΟΣ
print(may.removeGreekEmphasis()); // Μαιος

may = 'Μαΐου';
print(may.toGreekUpperCase()); // ΜΑΙΟΥ
print(may.removeGreekDieresis()); // Μαίου
```
