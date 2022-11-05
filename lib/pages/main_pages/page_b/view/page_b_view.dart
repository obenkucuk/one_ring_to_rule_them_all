import 'package:base_application/components/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBView extends StatelessWidget {
  const PageBView({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(BackgroundServices());
    return Center(
      child: Row(
        children: [
          IconButton(
              onPressed: () => c.changeTheme(ThemeMode.dark),
              icon: const Icon(Icons.dark_mode)),
          IconButton(
              onPressed: () => c.changeTheme(ThemeMode.light),
              icon: const Icon(Icons.light_mode)),
          IconButton(
              onPressed: () => c.changeTheme(ThemeMode.system),
              icon: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}
