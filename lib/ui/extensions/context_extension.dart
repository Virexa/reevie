import 'package:flutter/cupertino.dart';
import '../../gen/l10n/app_localizations.dart';
import '../../style/theme/color/builder.dart';
import '../../style/theme/color/colors.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);

  EdgeInsets get systemPadding => MediaQuery.paddingOf(this);

  Size get mediaQuerySize => MediaQuery.sizeOf(this);

  AppColorScheme get colorScheme => appColorSchemeOf(this);

  Brightness get brightness => MediaQuery.platformBrightnessOf(this);

  bool get systemThemeIsDark => brightness == Brightness.dark;

  FocusScopeNode get focusScope => FocusScope.of(this);

  bool get use24Hour => MediaQuery.alwaysUse24HourFormatOf(this);
}
