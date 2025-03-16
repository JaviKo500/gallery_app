import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomBottomNavigator extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigator ({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only( 
        topRight: Radius.circular(24), 
        topLeft: Radius.circular(24)
      ),
      child: BottomNavigationBar(
        onTap: (value) => context.go('/home/$value'),
        elevation: 0.5,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            activeIcon:  _CustomActiveIcon(),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_rounded),
            activeIcon: _CustomActiveIcon(
              icon: Icons.add_rounded,
              label: 'Add',
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: _CustomActiveIcon(
              icon: Icons.person,
              label: 'Profile',
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _CustomActiveIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _CustomActiveIcon({
    this.icon = Icons.home_rounded,
    this.label = 'Home',
  });

  @override
  Widget build(BuildContext context) {
    final colorsScheme = Theme.of(context).colorScheme;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(
          right: 12,
          left: 12,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: colorsScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: colorsScheme.onPrimary,
            ),
            const SizedBox(width: 4),
            Text(label, style: TextStyle(color: colorsScheme.onPrimary)),
          ],
        ),
      ),
    );
  }
}

