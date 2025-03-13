import 'package:flutter/material.dart';

import 'package:gallery_app/config/config.dart';


class CustomButton extends StatelessWidget {
  final String textButton;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const CustomButton ({
    super.key, 
    required this.textButton, 
    this.backgroundColor,
    this.foregroundColor
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: const Size(double.infinity, 48),
            backgroundColor: backgroundColor ?? colorScheme.primary,
            foregroundColor: foregroundColor ?? colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
          ),
          onPressed: () {
    
          },
          child: Text(
            textButton,
            style: TypographyTheme.of(context).typography.bodyLarge.copyWith(
              color: colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}