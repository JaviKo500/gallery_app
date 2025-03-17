import 'package:flutter/material.dart';
import 'package:gallery_app/features/home/home.dart';
import 'package:gallery_app/features/images/images.dart';
import 'package:gallery_app/features/shared/shared.dart';


class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int page;
  HomeScreen ({super.key, this.page = 0});

  final viewRoutes = [
    HomeView(),
    AddImagesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: page,
        children: viewRoutes,
      ),
      bottomNavigationBar: Responsive.isDesktop(context)
      ? null
      : CustomBottomNavigator(
        currentIndex: page,
      ),
    );
  }
}