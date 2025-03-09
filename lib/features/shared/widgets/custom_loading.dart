import 'package:flutter/material.dart';
import 'package:gallery_app/config/config.dart';
import 'package:gallery_app/features/shared/shared.dart';


class CustomLoading extends StatelessWidget {

  final String text;
  final bool isLoading;
  const CustomLoading ({super.key, this.text = 'Loading...', this.isLoading = true});

  @override
  Widget build(BuildContext context) {
    return isLoading 
      ? SizedBox(
        width: Responsive.getValueBySize(
          context, 
          ValueBySize<double>(mobileValue: 200, tableValue: 300, desktopValue: 500)
        ),
        child: Column(
          children: [
            LinearProgressIndicator(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              semanticsValue: 'Loading',
              semanticsLabel: 'Loading',
              minHeight: 12,
            ),
            CustomSizeBoxUi(sizeDesktop: 8, sizeMobile: 4, sizeTable: 4),
            Text(
              text,
              style: TypographyTheme.of(context).typography.bodySmall,
            ),
          ],
        ),
      )
      : Container();
  }
}