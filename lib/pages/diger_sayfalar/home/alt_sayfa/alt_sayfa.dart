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
      appBar: AppBar(title: const Text("Detay Sayfası")),
      body: Obx(
        () => Column(
          children: [
            //    Container(height: 50, width: 100, color: Colors.amber),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: controller.buildWidgetX(
                        Image.network(controller.dogModel.message ?? "")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  controller.buildTextWidgetX(
                      Text(controller.dogModel.message.toString())),
                  // controller.buildWidgetX(Text(controller.dogModel.status ?? "oben")),
                ],
              ),
            ),
            //   Container(height: 50, width: 100, color: Colors.amber),
          ],
        ),
      ),
    );
  }
}
