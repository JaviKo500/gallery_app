import 'package:flutter/material.dart';

import 'package:gallery_app/config/config.dart';
import 'package:gallery_app/features/shared/shared.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: customPaddingAllSize(context: context),
          child: SizedBox(
            width: Responsive.getValueBySize(
              context, 
              ValueBySize<double>(mobileValue: double.infinity, tableValue: 400, desktopValue: 500)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  'Let\'s Sing you in',
                  style: TypographyTheme.of(context).typography.headlineLarge,
                ),
                CustomSizeBoxUi(
                  sizeDesktop: 20,
                  sizeMobile: 12,
                  sizeTable: 12,
                ),
                Text(
                  'Welcome back.',
                  style: TypographyTheme.of(context).typography.titleLarge.copyWith(
                  ),
                ),
                Text(
                  'You\'ve ben missed!',
                  style: TypographyTheme.of(context).typography.titleLarge,
                ),
                Expanded(child: Container()),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TypographyTheme.of(context).typography.bodyLarge,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}