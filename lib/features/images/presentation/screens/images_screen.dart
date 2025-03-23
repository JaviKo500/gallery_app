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
                    mobileValue: 3,
                    tableValue: 5, 
                    desktopValue: 7
                    )
                  ), // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount: 20, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue, // color of grid items
                    child: Center(
                      child: Text(
                        'Item $index',
                      ),
                    ),
                  );
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