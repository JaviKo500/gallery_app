import 'package:flutter/material.dart';
import 'package:gallery_app/features/shared/shared.dart';

EdgeInsetsGeometry customPaddingAllSize ( {
    required BuildContext context, 
    double mobileValue = 24, 
    double tableValue = 28, 
    double desktopValue = 32,
  }) {
  return EdgeInsets.all(
    Responsive.getValueBySize(
      context, 
      ValueBySize<double>(mobileValue: mobileValue, tableValue: tableValue, desktopValue: desktopValue)
    )
  );
}