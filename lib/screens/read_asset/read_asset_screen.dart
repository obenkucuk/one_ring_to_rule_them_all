import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/read_asset_controller.dart';
import 'view/read_asses_view.dart';

class ReadAssetScreen extends StatelessWidget {
  const ReadAssetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReadAssetController>(
      init: ReadAssetController(),
      builder: (controller) => const ReadAssetView(),
    );
  }
}
