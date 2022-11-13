import 'package:base_application/components/batu_shimmer.dart';
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
        () => SingleChildScrollView(
          child: Column(
            children: [
              //    Container(height: 50, width: 100, color: Colors.amber),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (controller.status.isLoaded) {
                            print("object");
                          }
                        },
                        child: const Text("data")),
                    controller.buildStateX(
                        onLoading: BatuShimmer.sized(height: 200, width: 200),
                        onLoaded: Image.network(controller.dogModel.message.toString())),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.buildStateX(
                        onLoading: BatuShimmer.text(), onLoaded: Text(controller.dogModel.message.toString())),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.buildStateX(
                        onLoading: BatuShimmer.text(
                          alignment: Alignment.centerLeft,
                          width: 100,
                        ),
                        onLoaded: Text(controller.dogModel.message.toString())),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.buildStateX(
                        onLoading: BatuShimmer.generated(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  BatuShimmer.sized(height: 100, width: 100),
                                  BatuShimmer.sized(height: 100, width: 100),
                                  BatuShimmer.text(width: 150)
                                ],
                              ),
                            ],
                          ),
                        ),
                        onLoaded: Text(controller.dogModel.message.toString())),
                    controller.buildStateX(
                        onLoading: BatuShimmer.generated(
                          width: 200,
                          child: Column(
                            children: [
                              BatuShimmer.sized(borderRadius: 50, height: 100, width: 100),
                              BatuShimmer.text(
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
