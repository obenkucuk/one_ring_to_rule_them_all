import 'package:base_application/pages/diger_sayfalar/home/alt_sayfa/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AltSayfaScreen extends StatelessWidget {
  const AltSayfaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AltSayfaController>(
      init: AltSayfaController(),
      builder: (controller) => const AltSayfaView(),
    );
  }
}

class AltSayfaView extends GetView<AltSayfaController> {
  const AltSayfaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("detay sayfası"),
      ),
      body: Column(
        children: [
          Container(height: 50, width: 100, color: Colors.amber),
          Obx(
            () => controller.status.isLoaded
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(controller.dogModel.message ?? ""),
                        Text(controller.dogModel.status ?? "oben"),
                      ],
                    ),
                  )
                : const SizedBox(),
          ),
          Container(height: 50, width: 100, color: Colors.amber),
        ],
      ),
    );
  }
}
