import 'package:flutter/material.dart';
import 'package:gallery_app/config/theme/typography_theme.dart';
import 'package:gallery_app/features/shared/shared.dart';


class CheckAuthStatusScreen extends StatelessWidget {

  const CheckAuthStatusScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: customPaddingAllSize(context: context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInImage(
                width: Responsive.getValueBySize(
                  context, 
                  ValueBySize<double>(mobileValue: 200, tableValue: 250, desktopValue: 350)
                ),
                placeholder: AssetImage('assets/images/logo_app.gif'), 
                image: AssetImage('assets/images/logo_app.gif'),
              ),
              CustomSizeBoxUi(),
              TypingAnimation(
                text: 'Hello and Welcome',
                textStyle: TypographyTheme.of(context).titleLarge,
              ),
              CustomSizeBoxUi(sizeDesktop: 20, sizeMobile: 12, sizeTable: 12),
              TypingAnimation(
                text: 'We\'re setting things up for you. This will only take a moment.',
                duration: const Duration(milliseconds: 25) ,
                textStyle: TypographyTheme.of(context).titleSmall,
              ),
              SizedBox(
                height: Responsive.getValueBySize(
                  context, 
                  ValueBySize<double>(mobileValue: 20, desktopValue: 32)
                ),
              ),
              CustomLoading(),
            ],
          ),
        ),
      ),
    );
  }
}