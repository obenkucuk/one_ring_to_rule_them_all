import 'package:base_application/router/router.dart';
import 'package:base_application/theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme(false),
      darkTheme: darkTheme(true),
      themeMode: ThemeMode.light,
    );
  }
}
