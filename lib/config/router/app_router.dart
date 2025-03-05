import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:gallery_app/features/users/users.dart';
import 'package:gallery_app/features/auth/auth.dart';
import 'package:gallery_app/features/images/images.dart';

final goRouterProvider = Provider( ( ref ) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const CheckAuthStatusScreen(),
      ),
      //* auth
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      //* images
      GoRoute(
        path: '/images',
        builder: (context, state) => const ImagesScreen(),
      ),
      //* users
      GoRoute(
        path: '/users',
        builder: (context, state) => const UsersScreen(),
      ),
    ]
  );
});