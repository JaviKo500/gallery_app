

import 'package:flutter/material.dart';
import 'package:gallery_app/config/config.dart';
import 'package:gallery_app/features/shared/shared.dart';

class TypographyTheme {
   static DeviceSize deviceSize = DeviceSize.mobile;
   ColorScheme colorScheme = lightColorScheme;

   TypographyTheme( { this.colorScheme = lightColorScheme} );

   static TypographyTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return TypographyTheme( colorScheme: Theme.of( context).colorScheme );
  }

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  if (Responsive.isMobile(context)) {
    return DeviceSize.mobile;
  } else if (Responsive.isTable(context)) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final TypographyTheme theme;

  @override
  String get displayLargeFamily => 'Visby CF';
  @override
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  @override
  String get displayMediumFamily => 'Visby CF';
  @override
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  @override
  String get displaySmallFamily => 'Visby CF';
  @override
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );

  @override
  String get headlineLargeFamily => 'Visby CF';
  @override
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  @override
  String get headlineMediumFamily => 'Visby CF';
  @override
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  @override
  String get headlineSmallFamily => 'Visby CF';
  @override
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  
  @override
  String get titleLargeFamily => 'Visby CF';
  @override
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  
  @override
  String get titleMediumFamily => 'Visby CF';
  @override
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  @override
  String get titleSmallFamily => 'Visby CF';
  @override
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.inversePrimary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get labelLargeFamily => 'Visby CF';
  @override
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  @override
  String get labelMediumFamily => 'Visby CF';
  @override
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  @override
  String get labelSmallFamily => 'Visby CF';
  @override
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  @override
  String get bodyLargeFamily => 'Visby CF';
  @override
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get bodyMediumFamily => 'Visby CF';
  @override
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  @override
  String get bodySmallFamily => 'Visby CF';
  @override
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.inversePrimary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final TypographyTheme theme;

  @override
  String get displayLargeFamily => 'Visby CF';
  @override
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  @override
  String get displayMediumFamily => 'Visby CF';
  @override
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  @override
  String get displaySmallFamily => 'Visby CF';
  @override
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  @override
  String get headlineLargeFamily => 'Visby CF';
  @override
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  @override
  String get headlineMediumFamily => 'Visby CF';
  @override
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  @override
  String get headlineSmallFamily => 'Visby CF';
  @override
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  @override
  String get titleLargeFamily => 'Visby CF';
  @override
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  @override
  String get titleMediumFamily => 'Visby CF';
  @override
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  @override
  String get titleSmallFamily => 'Visby CF';
  @override
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.inversePrimary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get labelLargeFamily => 'Visby CF';
  @override
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  @override
  String get labelMediumFamily => 'Visby CF';
  @override
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  @override
  String get labelSmallFamily => 'Visby CF';
  @override
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  @override
  String get bodyLargeFamily => 'Visby CF';
  @override
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get bodyMediumFamily => 'Visby CF';
  @override
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  @override
  String get bodySmallFamily => 'Visby CF';
  @override
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.inversePrimary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final TypographyTheme theme;

  @override
  String get displayLargeFamily => 'Visby CF';
  @override
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  @override
  String get displayMediumFamily => 'Visby CF';
  @override
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  @override
  String get displaySmallFamily => 'Visby CF';
  @override
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 36.0,
      );
  @override
  String get headlineLargeFamily => 'Visby CF';
  @override
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  @override
  String get headlineMediumFamily => 'Visby CF';
  @override
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  @override
  String get headlineSmallFamily => 'Visby CF';
  @override
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  @override
  String get titleLargeFamily => 'Visby CF';
  @override
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  @override
  String get titleMediumFamily => 'Visby CF';
  @override
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  @override
  String get titleSmallFamily => 'Visby CF';
  @override
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.inversePrimary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get labelLargeFamily => 'Visby CF';
  @override
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  @override
  String get labelMediumFamily => 'Visby CF';
  @override
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  
  @override
  String get labelSmallFamily => 'Visby CF';
  @override
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  
  @override
  String get bodyLargeFamily => 'Visby CF';
  @override
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get bodyMediumFamily => 'Visby CF';
  @override
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  @override
  String get bodySmallFamily => 'Visby CF';
  @override
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Visby CF',
        color: theme.colorScheme.inversePrimary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}