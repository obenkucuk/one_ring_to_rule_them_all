import 'package:base_application/pages/deneme.dart';
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
    // print(Theme.of(context).brightness);

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
                  controller.buildStateSize(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          controller.dogModel.message.toString())),
                  const SizedBox(
                    height: 20,
                  ),
                  controller.buildStateText(
                      child: Text(controller.dogModel.message.toString())),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Deneemeeee())));
                      },
                      child: const Text("Alt Sayfa")),
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
