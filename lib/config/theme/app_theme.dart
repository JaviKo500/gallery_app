import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkMode;
  AppTheme({ this.isDarkMode = false});

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorScheme: isDarkMode ? darkColorScheme : lightColorScheme,
  );

  AppTheme copyWith({
    bool? isDarkMode,
    }) => AppTheme(
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}

const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF000000),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE0E0E0),
  onPrimaryContainer: Color(0xFF000000),
  primaryFixed: Color(0xFFC9C9C9),
  primaryFixedDim: Color(0xFF9F9F9F),
  onPrimaryFixed: Color(0xFF000000),
  onPrimaryFixedVariant: Color(0xFF000000),
  secondary: Color(0xFF000000),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE4E4E4),
  onSecondaryContainer: Color(0xFF000000),
  secondaryFixed: Color(0xFFC9C9C9),
  secondaryFixedDim: Color(0xFF9F9F9F),
  onSecondaryFixed: Color(0xFF000000),
  onSecondaryFixedVariant: Color(0xFF000000),
  tertiary: Color(0xFF000000),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFC9C9C9),
  onTertiaryContainer: Color(0xFF000000),
  tertiaryFixed: Color(0xFFC9C9C9),
  tertiaryFixedDim: Color(0xFF9F9F9F),
  onTertiaryFixed: Color(0xFF000000),
  onTertiaryFixedVariant: Color(0xFF000000),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF000000),
  surface: Color(0xFFFCFCFC),
  onSurface: Color(0xFF111111),
  surfaceDim: Color(0xFFE0E0E0),
  surfaceBright: Color(0xFFFDFDFD),
  surfaceContainerLowest: Color(0xFFFFFFFF),
  surfaceContainerLow: Color(0xFFF8F8F8),
  surfaceContainer: Color(0xFFF3F3F3),
  surfaceContainerHigh: Color(0xFFEDEDED),
  surfaceContainerHighest: Color(0xFFE7E7E7),
  onSurfaceVariant: Color(0xFF393939),
  outline: Color(0xFF919191),
  outlineVariant: Color(0xFFD1D1D1),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFF2A2A2A),
  onInverseSurface: Color(0xFFF1F1F1),
  inversePrimary: Color(0xFF808080),
  surfaceTint: Color(0xFF000000),
);

const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFFFFF),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFF404040),
  onPrimaryContainer: Color(0xFFFFFFFF),
  primaryFixed: Color(0xFFC9C9C9),
  primaryFixedDim: Color(0xFF9F9F9F),
  onPrimaryFixed: Color(0xFF000000),
  onPrimaryFixedVariant: Color(0xFF000000),
  secondary: Color(0xFFFFFFFF),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF474747),
  onSecondaryContainer: Color(0xFFFFFFFF),
  secondaryFixed: Color(0xFFC9C9C9),
  secondaryFixedDim: Color(0xFF9F9F9F),
  onSecondaryFixed: Color(0xFF000000),
  onSecondaryFixedVariant: Color(0xFF000000),
  tertiary: Color(0xFFFFFFFF),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFF5E5E5E),
  onTertiaryContainer: Color(0xFFFFFFFF),
  tertiaryFixed: Color(0xFFC9C9C9),
  tertiaryFixedDim: Color(0xFF9F9F9F),
  onTertiaryFixed: Color(0xFF000000),
  onTertiaryFixedVariant: Color(0xFF000000),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF000000),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFFFFF),
  surface: Color(0xFF080808),
  onSurface: Color(0xFFF1F1F1),
  surfaceDim: Color(0xFF060606),
  surfaceBright: Color(0xFF2C2C2C),
  surfaceContainerLowest: Color(0xFF010101),
  surfaceContainerLow: Color(0xFF0E0E0E),
  surfaceContainer: Color(0xFF151515),
  surfaceContainerHigh: Color(0xFF1D1D1D),
  surfaceContainerHighest: Color(0xFF282828),
  onSurfaceVariant: Color(0xFFCACACA),
  outline: Color(0xFF777777),
  outlineVariant: Color(0xFF414141),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFFE8E8E8),
  onInverseSurface: Color(0xFF2A2A2A),
  inversePrimary: Color(0xFF6B6B6B),
  surfaceTint: Color(0xFFFFFFFF),
);