import 'package:flutter/material.dart';
import 'package:gallery_app/config/config.dart';


class CustomTextFormField extends StatelessWidget {

  final TextInputType? keyboardType;
  final String? hintText;
  const CustomTextFormField ({
    super.key,
    this.keyboardType = TextInputType.text,
    this.hintText = 'Type your text'
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hintText,
          hintStyle: TypographyTheme.of(context).bodySmall,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: colorScheme.inversePrimary,
              width: 2,
            ),
          ),
          focusColor: colorScheme.primary
        ),
      ),
    );
  }
}