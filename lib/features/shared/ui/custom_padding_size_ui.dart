import 'package:flutter/material.dart';
import 'package:gallery_app/features/shared/shared.dart';

EdgeInsetsGeometry customPaddingAllSize ( {
    required BuildContext context, 
    double mobileValue = 16, 
    double tableValue = 20, 
    double desktopValue = 24,
  }) {
  return EdgeInsets.all(
    Responsive.getValueBySize(
      context, 
      ValueBySize<double>(mobileValue: mobileValue, tableValue: tableValue, desktopValue: desktopValue)
    )
  );
}