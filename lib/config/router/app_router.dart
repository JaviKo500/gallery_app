import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gallery_app/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

import 'package:gallery_app/features/users/users.dart';
import 'package:gallery_app/features/auth/auth.dart';
import 'package:gallery_app/features/images/images.dart';

final goRouterProvider = Provider( ( ref ) {
  return GoRouter(
    initialLocation: '/home/0',
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
        path: '/home/:page',
        name: HomeScreen.name,
        builder: (context, state) {
          int page = int.parse(  state.pathParameters['page'] ?? '0' );
          if ( page > 1  || page < 0 ) {
            page = 0;
          }
          return HomeScreen(page: page);
        },
      ),
      //* users
      GoRoute(
        path: '/users',
        builder: (context, state) => const UsersScreen(),
      ),
    ]
  );
});