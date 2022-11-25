import 'package:base_application/pages/diger_sayfalar/home/alt_sayfa/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../components/shimmer_pro.dart';

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
        () => SingleChildScrollView(
          child: Column(
            children: [
              //    Container(height: 50, width: 100, color: Colors.amber),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    controller.buildStateX(
                        onLoading: ShimmerPro.sized(height: 200, width: 200),
                        onLoaded: Image.network(controller.dogModel.message.toString())),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.buildStateX(
                        onLoading: ShimmerPro.text(), onLoaded: Text(controller.dogModel.message.toString())),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.buildStateX(
                        onLoading: ShimmerPro.text(
                          alignment: Alignment.centerLeft,
                          width: 100,
                        ),
                        onLoaded: Text(controller.dogModel.message.toString())),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.buildStateX(
                        onLoading: ShimmerPro.generated(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ShimmerPro.sized(height: 100, width: 100),
                                  ShimmerPro.sized(height: 100, width: 100),
                                  ShimmerPro.text(width: 150)
                                ],
                              ),
                            ],
                          ),
                        ),
                        onLoaded: Text(controller.dogModel.message.toString())),
                    controller.buildStateX(
                        onLoading: ShimmerPro.generated(
                          width: 200,
                          child: Column(
                            children: [
                              ShimmerPro.sized(borderRadius: 50, height: 100, width: 100),
                              ShimmerPro.text(
                                maxLine: 1,
                              )
                            ],
                          ),
                        ),
                        onLoaded: Text(controller.dogModel.message.toString())),

                    // controller.buildWidgetX(Text(controller.dogModel.status ?? "oben")),
                  ],
                ),
              ),
              //   Container(height: 50, width: 100, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
