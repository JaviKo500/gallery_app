import 'package:flutter/material.dart';

import 'package:gallery_app/config/config.dart';


class CustomButton extends StatelessWidget {

  const CustomButton ({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: const Size(double.infinity, 48),
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
          ),
          onPressed: () {
    
          },
          child: Text(
            'Login',
            style: TypographyTheme.of(context).typography.bodyLarge.copyWith(
              color: colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}