import 'package:base_application/pages/main_pages/page_b/view/page_b_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/page_b_controller.dart';

class PageBPage extends StatelessWidget {
  const PageBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageBController>(
      init: PageBController(),
      builder: (controller) => const PageBView(),
    );
  }
}
