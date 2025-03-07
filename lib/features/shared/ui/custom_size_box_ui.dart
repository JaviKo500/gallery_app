import 'package:flutter/material.dart';
import 'package:gallery_app/features/shared/shared.dart';

enum Orientation { vertical, horizontal }
class CustomSizeBoxUi extends StatelessWidget {
  final Orientation orientation;
  final double sizeMobile;
  final double sizeTable;
  final double sizeDesktop;
  const CustomSizeBoxUi ({super.key, this.orientation = Orientation.vertical, this.sizeMobile = 44, this.sizeTable = 60, this.sizeDesktop = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: orientation == Orientation.vertical ? Responsive.getValueBySize(
        context, 
        ValueBySize<double>(mobileValue: sizeMobile, tableValue: sizeTable, desktopValue: sizeDesktop)
      ) : 0,
      width: orientation == Orientation.horizontal ? Responsive.getValueBySize(
        context, 
        ValueBySize<double>(mobileValue: sizeMobile, tableValue: sizeTable, desktopValue: sizeDesktop)
      ) : 0,
    );
  }
}