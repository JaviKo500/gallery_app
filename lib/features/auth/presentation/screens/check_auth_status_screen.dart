import 'package:flutter/material.dart';
import 'package:gallery_app/features/shared/shared.dart';


class CheckAuthStatusScreen extends StatelessWidget {

  const CheckAuthStatusScreen ({super.key});

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle()
            ),
            SizedBox(
              height: Responsive.getValueBySize(
                context, 
                ValueBySize<double>(mobileValue: 12, desktopValue: 20)
              ),
            ),
            Text(
              'We\'re setting things up for you. This will only take a moment.',
              style: TextStyle()
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