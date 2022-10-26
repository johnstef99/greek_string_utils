/// Map to lookup for emphasis removal
const greekEmphasisMap = {
  'ά': 'α',
  'Ά': 'Α',
  'έ': 'ε',
  'Έ': 'Ε',
  'ή': 'η',
  'Ή': 'Η',
  'ί': 'ι',
  'ΐ': 'ϊ',
  'Ί': 'Ι',
  'ό': 'ο',
  'Ό': 'Ο',
  'ύ': 'υ',
  'ΰ': 'ϋ',
  'Ύ': 'Υ',
  'ώ': 'ω',
  'Ώ': 'Ω',
};

/// Map to lookup for dieresis removal
const greekDieresisMap = {
  'ϊ': 'ι',
  'ΐ': 'ί',
  'Ϊ': 'Ι',
  'ϋ': 'υ',
  'ΰ': 'ύ',
  'Ϋ': 'Υ',
};

/// Helper functions for String with greek chars
extension GreekStringUtils on String {
  /// Removes emphasis(τόνους). For example ά -> α, Ά -> Α, ΐ -> ϊ.
  String removeGreekEmphasis() {
    return replaceAllMapped(
      RegExp('[${greekEmphasisMap.keys.join()}]'),
      (match) =>
          greekEmphasisMap[match.group(0)] ?? match.group(0) ?? match.input,
    );
  }

  /// Removes dieresis(διαλυτικά). For example ϋ -> υ, ΐ -> ί.
  String removeGreekDieresis() {
    return replaceAllMapped(
      RegExp('[${greekDieresisMap.keys.join()}]'),
      (match) =>
          greekDieresisMap[match.group(0)] ?? match.group(0) ?? match.input,
    );
  }

  /// Capitalizes all characters and removes emphasis if present.
  String toGreekUpperCase() => removeGreekEmphasis().toUpperCase();
}
