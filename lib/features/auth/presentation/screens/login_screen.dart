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
                  style: TypographyTheme.of(context).headlineLarge,
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
                CustomSizeBoxUi(
                  sizeMobile: 64,
                  sizeTable: 64,
                  sizeDesktop: 72,
                ),
                Form(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TypographyTheme.of(context).typography.bodyMedium,
                        ),
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Your email',
                        ),
                        CustomSizeBoxUi(
                          sizeMobile: 16,
                          sizeTable: 20,
                          sizeDesktop: 24,
                        ),
                        Text(
                          'Password',
                          style: TypographyTheme.of(context).typography.bodyMedium,
                        ),
                        CustomTextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          hintText: 'Password',
                        ),
                      ],
                    ),
                  )
                ),
                Expanded(child: Container()),
                CustomButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomSizeBoxUi(
                          sizeMobile: 16,
                          sizeTable: 20,
                          sizeDesktop: 24,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TypographyTheme.of(context).typography.bodySmall
                              ),
                              TextSpan(
                                text: 'Register',
                                style: TypographyTheme.of(context).typography.bodyMedium.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ]
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}