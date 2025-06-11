import 'dart:ui';

class AppColorScheme {
  final Color primary;
  final Color secondary;

  final Color outline;

  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;

  final Color onPrimary;

  final Color surface;

  final Color containerLow;
  final Color containerMedium;
  final Color containerHigh;

  final Color positive;
  final Color warning;
  final Color error;

  final Brightness brightness;

  const AppColorScheme({
    this.primary = const Color(0xFF10a125),
    this.secondary = const Color(0xFF3a5ff5),
    required this.outline,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
    this.onPrimary = const Color(0xFFFFFFFF),
    required this.surface,
    required this.containerLow,
    required this.containerMedium,
    required this.containerHigh,
    this.error = const Color(0xFFDD2828),
    this.positive = const Color(0xFF199C1E),
    this.warning = const Color(0xFFFFA500),
    required this.brightness,
  });
}

final darkThemeColors = const AppColorScheme(
  outline: Color(0x14FFFFFF),
  textPrimary: Color(0xF7FFFFFF),
  textSecondary: Color(0xB3FFFFFF),
  textDisabled: Color(0x80FFFFFF),
  surface: Color(0xFF000000),
  containerLow: Color(0x14CEE5FF),
  containerMedium: Color(0x14CEE5FF),
  containerHigh: Color(0x3DCEE5FF),
  brightness: Brightness.dark,
);
