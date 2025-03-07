import 'package:flutter/material.dart';
import 'package:gallery_app/features/shared/shared.dart';


class CheckAuthStatusScreen extends StatelessWidget {

  const CheckAuthStatusScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage(
              width: Responsive.getValueBySize(
                context, 
                ValueBySize<double>(mobileValue: 200, tableValue: 250, desktopValue: 350)
              ),
              placeholder: AssetImage('assets/images/splash_logo_dark.png'), 
              image: AssetImage('assets/images/splash_logo_dark.png'),
            ),
            SizedBox(
              height: Responsive.getValueBySize(
                context, 
                ValueBySize<double>(mobileValue: 44, desktopValue: 60)
              ),
            ),
            Text(
              'Hello and Welcome',
              style: textStyle.titleLarge?.copyWith(
                color: colorScheme.primary,
                fontSize: Responsive.getValueBySize(
                context, 
                ValueBySize<double>(mobileValue: 44, desktopValue: 60)
              ),
              )
            ),
            SizedBox(
              height: Responsive.getValueBySize(
                context, 
                ValueBySize<double>(mobileValue: 12, desktopValue: 20)
              ),
            ),
            Text(
              'We\'re setting things up for you. This will only take a moment.',
              style: textStyle.bodyLarge?.copyWith(
                color: colorScheme.secondaryFixed,
              )
            ),
            SizedBox(
              height: Responsive.getValueBySize(
                context, 
                ValueBySize<double>(mobileValue: 20, desktopValue: 32)
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}