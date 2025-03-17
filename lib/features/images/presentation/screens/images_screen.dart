import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:gallery_app/config/config.dart';
import 'package:gallery_app/features/shared/shared.dart';


class ImagesScreen extends StatelessWidget {

  const ImagesScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All images',
          style: TypographyTheme.of(context).titleLarge,
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            context.go('/home/0');
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: customPaddingAllSize(context: context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                child: CustomTextFormField(
                  hintText: 'Search your images',
                  radius: 232,
                  icon: Icon(
                    Icons.search_rounded,
                    color: colorScheme.inversePrimary,
                    size: 24,
                  ),
                )
              ),
              Text(
                'text',
                style: TextStyle()
              ),
            ],
          ),
        ),
      ),
    );
  }
}