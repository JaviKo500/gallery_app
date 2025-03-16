import 'package:flutter/material.dart';
import 'package:gallery_app/config/config.dart';
import 'package:gallery_app/features/shared/shared.dart';


class HomeView extends StatelessWidget {

  const HomeView ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: customPaddingAllSize(context: context),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Today activity',
              style: TypographyTheme.of(context).headlineLarge
            ),
            CustomSizeBoxUi(
              sizeDesktop: 16,
              sizeMobile: 8,
              sizeTable: 8,
            ),
            Text(
              'The photography gallery',
              style: TypographyTheme.of(context).bodySmall
            ),
            
            _GalleryLists(),
            _GalleryLists(),
            _GalleryLists(),
            _GalleryLists(),
            CustomSizeBoxUi(
              sizeDesktop: 48,
              sizeMobile: 32,
              sizeTable: 32,
            ),
          ],
        ),
      ),
    );
  }
}


class _GalleryLists extends StatelessWidget {

  const _GalleryLists();

  @override
  Widget build(BuildContext context) {
    final colorsScheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomSizeBoxUi(),
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: Responsive.getValueBySize(context, ValueBySize(
                  mobileValue: 44, 
                  desktopValue: 70)
                ),
                height: Responsive.getValueBySize(context, ValueBySize(
                  mobileValue: 44, 
                  desktopValue: 70)
                ),
                decoration: BoxDecoration(
                  color: colorsScheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  'N',
                  style: TypographyTheme.of(context).typography.bodySmall.copyWith(
                    color: colorsScheme.onPrimary,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nature',
                    style: TypographyTheme.of(context).typography.bodyLarge,
                  ),
                  Row(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '6 images added by you',
                        style: TypographyTheme.of(context).typography.bodySmall,
                      ),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: colorsScheme.primary,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      Text(
                        '2m  ago',
                        style: TypographyTheme.of(context).typography.bodySmall,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          CustomSizeBoxUi(
            sizeDesktop: 24,
            sizeMobile: 20,
            sizeTable: 20,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://placehold.co/600x400.jpg',
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Image.asset('assets/images/load.gif');
                      },
                    ),
                  ),
                );  
              },
            ),
          ),
      ],
   );
  }
}