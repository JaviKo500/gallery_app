import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gallery_app/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

import 'package:gallery_app/features/users/users.dart';
import 'package:gallery_app/features/auth/auth.dart';
import 'package:gallery_app/features/images/images.dart';

final goRouterProvider = Provider( ( ref ) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      //* auth
      GoRoute(
        path: '/splash',
        builder: (context, state) => const CheckAuthStatusScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      //* images
      GoRoute(
        path: '/images',
        builder: (context, state) => const ImagesScreen(),
      ),
      //* home
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      //* users
      GoRoute(
        path: '/users',
        builder: (context, state) => const UsersScreen(),
      ),
    ]
  );
});