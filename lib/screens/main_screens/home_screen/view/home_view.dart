import 'package:base_application/screens/main_screens/home_screen/controller/home_controller.dart';
import 'package:base_application/session_services.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/media_query_x.dart';
import '../../../../core/screen_status/screen_status.dart';
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
            if (controller.screenStatus == ScreenStatus.loading) {
              return const CircularProgressIndicator.adaptive();
            } else if (controller.screenStatus == ScreenStatus.loaded) {
              List<AllStocksDataModel> modelList = controller.allStocksModel.data!;
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
                        return SizedBox(
                          width: MediaQueryX.width,
                          child: Text(
                            modelList[index].kod ?? '',
                            style: s14W600,
                          ),
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
        controller.denemeIstek(context);

        //TODO hangi bottom sheet doğru
        // BottomSheetX.showBottomSheet(
        //     Column(
        //       children: [
        //         Row(
        //           children: [
        //             IconButtonX(
        //                 icon: Icons.abc,
        //                 onTap: () {
        //                   print("object");
        //                 }),
        //             MaterialButtonX(
        //                 buttonText: "material muttonx",
        //                 onTap: () {
        //                   print("object");
        //                 }),
        //             MaterialButton(
        //               child: Text("material button"),
        //               onPressed: () {
        //                 print("object");
        //               },
        //             ),
        //             TextButton(
        //                 onPressed: () {
        //                   print("object");
        //                 },
        //                 child: Text("textbutton")),
        //             TextButtonX(
        //                 text: "TextButtonX",
        //                 onTap: () {
        //                   print("object");
        //                 })
        //           ],
        //         ),
        //         AnimatedDropdown(itemsList: ["batu", "batu2"], selectedPair: 'batu'),
        //         OverlayAnimatedDropdownX(
        //           itemsList: ["batu", "batu2"],
        //           getSelectedValue: (p0) {},
        //         ),
        //         SearchBarX()
        //       ],
        //     ),
        //     context,
        //     title: "title");
        // // showBottomSheetX(context: context);
      }),
    );
  }
}
