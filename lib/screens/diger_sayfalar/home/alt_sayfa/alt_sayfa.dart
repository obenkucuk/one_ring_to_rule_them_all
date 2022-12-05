import 'package:base_application/screens/diger_sayfalar/home/alt_sayfa/controller.dart';
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
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1000,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox.square(
              dimension: 100,
              child: Card(
                child: Center(child: Text(index.toString())),
              ),
            );
          },
        ),
      ),
    );
  }
}
