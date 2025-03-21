import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gallery_app/config/config.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp()
    )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch( goRouterProvider );
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(isDarkMode: false ).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
