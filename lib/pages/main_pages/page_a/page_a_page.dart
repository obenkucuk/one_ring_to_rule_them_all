import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/page_a_controller.dart';
import 'view/page_a_view.dart';

class PageAPage extends StatelessWidget {
  const PageAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageAController>(
      init: PageAController(),
      builder: (controller) => const PageAView(),
    );
  }
}
