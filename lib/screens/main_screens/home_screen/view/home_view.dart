import 'package:base_application/screens/main_screens/home_screen/controller/home_controller.dart';
import 'package:base_application/session_services.dart';
import 'package:base_application/theme/text_style.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../portfolio_screen/model/all_stocks.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Obx(() {
            if (controller.homeStatus.value == ScreenStatus.loading) {
              return const CircularProgressIndicator.adaptive();
            } else if (controller.homeStatus.value == ScreenStatus.loaded) {
              List<AllStocksDataModel> modelList =
                  controller.allStocksModel.data!;
              return Column(
                children: [
                  // FutureBuilder(
                  //     future: ses.denemeIstek(),
                  //     builder: (context, snapshot) {
                  //       return ListView.builder(
                  //           shrinkWrap: true,
                  //           itemCount: snapshot.data!.data!.data!.length,
                  //           itemBuilder: (context, index) {
                  //             return Text(
                  //                 snapshot.data!.data!.data![index].name!);
                  //           });
                  //     }),
                  Expanded(
                    child: ListView.builder(
                      itemCount: modelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                          modelList[index].kod ?? '',
                          style: s14W600,
                        );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return const SizedBox();
            }
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.find<SessionServices>().denemeIstek(context);
      }),
    );
  }
}
