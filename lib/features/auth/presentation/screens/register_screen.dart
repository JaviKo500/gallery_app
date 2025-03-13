import 'package:flutter/material.dart';

import 'package:gallery_app/config/config.dart';
import 'package:gallery_app/features/shared/shared.dart';

class RegisterScreen extends StatelessWidget {

  const RegisterScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
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
                  'Create an account',
                  style: TypographyTheme.of(context).headlineLarge,
                ),
                CustomSizeBoxUi(
                  sizeDesktop: 20,
                  sizeMobile: 12,
                  sizeTable: 12,
                ),
                Text(
                  'Sign up now and start your journey!',
                  style: TypographyTheme.of(context).typography.titleLarge.copyWith(
                  ),
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
                          'Your name',
                          style: TypographyTheme.of(context).typography.bodyMedium,
                        ),
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'First last name',
                        ),
                        CustomSizeBoxUi(
                          sizeMobile: 16,
                          sizeTable: 20,
                          sizeDesktop: 24,
                        ),
                        Text(
                          'Email',
                          style: TypographyTheme.of(context).typography.bodyMedium,
                        ),
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'your@email.com',
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
                CustomButton(
                  textButton: 'Register',
                ),
                CustomSizeBoxUi(
                  sizeMobile: 16,
                  sizeTable: 20,
                  sizeDesktop: 24,
                ),
                CustomButton(
                  textButton: 'Login',
                  backgroundColor: colorScheme.primaryFixedDim,
                  foregroundColor: colorScheme.onPrimaryContainer,
                ),
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
                        Row(
                          spacing: 4,
                          children: [
                            Icon(
                              Icons.email_rounded,
                              color: colorScheme.inversePrimary,
                            ),
                            Text(
                              'help@galleryapp.com',
                              style: TypographyTheme.of(context).typography.bodySmall,
                            ),
                          ],
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