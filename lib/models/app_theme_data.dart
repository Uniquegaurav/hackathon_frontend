
import 'package:flutter/material.dart';

class AppThemeData {
  static final AppThemeData _instance = AppThemeData._withDefaultValues();

  static AppThemeData get instance => _instance;

  Color _primaryColor, _primaryColorLight, _primaryColorDark;
  Color _secondaryColor, _secondaryColorLight, _secondaryColorDark;
  final Color _backgroundLight1,
      _backgroundLight2,
      _backgroundLight3,
      _backgroundGrey;
  final Color _textDark1, _textDark2, _textDark3, _textLight1;
  final Color _fillDark1, _fillDark2, _fillDark3;
  final Color _strokeDark1, _strokeDark2, _strokeDark3;
  final Color _warningColor, _warningColorLight, _warningColorDark;
  final Color _cautionColor, _cautionColorLight, _cautionColorDark;
  final Color _successColor,
      _successColorLight,
      _successColorMedium,
      _successColorDark;
  final Color _padding1;
  final Color _shadow1;
  //TODO: Replace with proper default values
  AppThemeData._withDefaultValues()
      : _primaryColor = const Color(0xFF0025B9),
        _primaryColorDark = const Color(0xFF001D92),
        _primaryColorLight = const Color(0xFF002DE0),
        _secondaryColor = const Color(0xFF00BC8D),
        _secondaryColorDark = const Color(0xFF00956F),
        _secondaryColorLight = const Color(0xFF00E3AB),
        _backgroundLight1 = const Color(0xFFFFFFFF),
        _backgroundLight2 = const Color(0xFFF6FBFF),
        _backgroundLight3 = const Color(0xFFEEF4F9),
        _backgroundGrey = const Color.fromRGBO(15, 15, 15, 0.05),
        _textDark1 = const Color.fromRGBO(15, 15, 15, 1),
        _textDark2 = const Color.fromRGBO(15, 15, 15, 0.75),
        _textDark3 = const Color.fromRGBO(15, 15, 15, 0.5),
        _textLight1 = const Color.fromRGBO(255, 255, 255, 1),
        _fillDark1 = const Color.fromRGBO(149, 190, 224, 1),
        _fillDark2 = const Color.fromRGBO(149, 190, 224, 0.3),
        _fillDark3 = const Color.fromRGBO(149, 190, 224, 0.05),
        _strokeDark1 = const Color.fromRGBO(95, 122, 143, 1),
        _strokeDark2 = const Color.fromRGBO(149, 190, 224, 1),
        _strokeDark3 = const Color.fromRGBO(149, 190, 224, 0.4),
        _warningColor = const Color(0xFFDC2804),
        _warningColorLight = const Color(0xFFFCEEED),
        _warningColorDark = const Color(0xFFB32306),
        _cautionColor = const Color(0xFFFFC247),
        _cautionColorLight = const Color(0xFFFFF6E3),
        _cautionColorDark = const Color(0xFFD29822),
        _successColor = const Color(0xFF05945B),
        _successColorLight = const Color(0xFFEDF7F2),
        _successColorMedium = const Color(0xFFBBE2CE),
        _successColorDark = const Color(0xFF07794C),
        _padding1 = const Color(0xFFF5F5F5),
        _shadow1 = const Color(0xFF337AB7);

  void initFromMap(Map<String, String> map) {
    _primaryColor = _getColor(map['primaryColor'] ?? '');
    _primaryColorDark = _getColor(map['primaryColorDark'] ?? '');
    _primaryColorLight = _getColor(map['primaryColorLight'] ?? '');
    _secondaryColor = _getColor(map['secondaryColor'] ?? '');
    _secondaryColorDark = _getColor(map['secondaryColorDark'] ?? '');
    _secondaryColorLight = _getColor(map['secondaryColorLight'] ?? '');
  }

  static Color _getColor(String colorValue) {
    if (colorValue.isEmpty) {
      return Colors.black;
    }
    return HexColor.fromHex(colorValue);
  }

  Color get successColorDark => _successColorDark;

  Color get successColorMedium => _successColorMedium;

  Color get successColorLight => _successColorLight;

  Color get successColor => _successColor;

  Color get cautionColorDark => _cautionColorDark;

  Color get cautionColorLight => _cautionColorLight;

  Color get cautionColor => _cautionColor;

  Color get warningColorDark => _warningColorDark;

  Color get warningColorLight => _warningColorLight;

  Color get warningColor => _warningColor;

  Color get textDark3 => _textDark3;

  Color get textDark2 => _textDark2;

  Color get textDark1 => _textDark1;

  Color get textLight1 => _textLight1;

  Color get backgroundLight3 => _backgroundLight3;

  Color get backgroundLight2 => _backgroundLight2;

  Color get backgroundLight1 => _backgroundLight1;

  Color get backgroundGrey => _backgroundGrey;

  Color get secondaryColorDark => _secondaryColorDark;

  Color get secondaryColorLight => _secondaryColorLight;

  Color get secondaryColor => _secondaryColor;

  Color get primaryColorDark => _primaryColorDark;

  Color get primaryColorLight => _primaryColorLight;

  Color get primaryColor => _primaryColor;

  Color get strokeDark3 => _strokeDark3;

  Color get strokeDark2 => _strokeDark2;

  Color get strokeDark1 => _strokeDark1;

  Color get fillDark3 => _fillDark3;

  Color get fillDark2 => _fillDark2;

  Color get fillDark1 => _fillDark1;

  Color get padding1 => _padding1;

  Color get shadow1 => _shadow1;
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}