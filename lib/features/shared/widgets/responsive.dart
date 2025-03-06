import 'package:flutter/material.dart';
class ValueBySize<T>{
  final T mobileValue;
  final T? tableValue;
  final T desktopValue;
  const ValueBySize({
    required this.mobileValue,
    required this.desktopValue,
    this.tableValue,
  });
}
class Responsive extends StatelessWidget {
  
  final Widget mobile;
  final Widget? table;
  final Widget desktop;

  const Responsive ({ 
    required this.mobile, 
    required this.desktop, 
    this.table, 
    super.key 
  });

  static const double  mobileWith = 640;
  static const double  tableWith = 768;
  static const double  desktopWith = 1024;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobileWith;
  }

  static bool isTable(BuildContext context) {
    return MediaQuery.of(context).size.width < desktopWith 
      && MediaQuery.of(context).size.width >= mobileWith;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= desktopWith;
  }

  static getValueBySize(BuildContext context, ValueBySize values) {
    if ( isMobile(context) ) {
      return values.mobileValue;
    } else if ( isTable(context) ) {
      return values.tableValue ?? values.mobileValue;
    } else {
      return values.desktopValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if ( size.width < 640 ) {
      return mobile;
    } else if ( size.width >= 640 && table != null ) {
      return table ?? Container();
    } else {
      return desktop;
    }
  }
}