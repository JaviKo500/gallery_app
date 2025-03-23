import 'dart:ui';

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
      body: SafeArea(
        child: SingleChildScrollView(
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
                _MenuFilter(),
                GridView.builder(
                  physics: ScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Responsive.getValueBySize(context, ValueBySize(
                    mobileValue: 2,
                    tableValue: 5, 
                    desktopValue: 7
                    )
                  ), // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                // padding: EdgeInsets.all(4.0), // padding around the grid
                itemCount: 20, // total number of items
                itemBuilder: (context, index) {
                  return _ImageCard();
                },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    // color: Colors.grey[300],
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        'https://placehold.co/600x400.jpg',
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Image.asset('assets/images/load.gif');
                        },
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: ClipRRect(  // <-- clips to the 200x200 [Container] below
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child:  Container(
                          alignment: Alignment.center,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            '6.2K files', 
                            style: TypographyTheme.of(context).typography.bodySmall.copyWith(
                              color: colorScheme.onPrimary,
                              fontSize: 14,
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 4,),
        Text(
          'Nature',
          style: TypographyTheme.of(context).typography.bodyMedium,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}

class _MenuFilter extends StatelessWidget {
  const _MenuFilter();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        SizedBox(height: 12,),
        Row(
          children: [
            DropdownButton(
              borderRadius: BorderRadius.circular(20),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              underline: Text(''),
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              value: 1,
              items: [
                DropdownMenuItem(
                  value: 0,
                  child: Text('All'),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('Date modified'),
                ),
              ], 
              onChanged: (value) {
                
              },
            ),
            Expanded(child: Container()),
            Container(
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[300],
              ),
              child: 
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(Icons.image),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: colorScheme.primary,
                    ),
                    child: Icon(Icons.grid_view, color: colorScheme.onPrimary,),
                  )
                ]
              ),
            )
          ],
        ),
        SizedBox(height: 4,),
      ],
    );
  }
}