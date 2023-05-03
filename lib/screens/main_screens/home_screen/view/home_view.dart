import 'package:base_application/screens/main_screens/home_screen/controller/home_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/media_query_x.dart';
import '../../../../core/screen_status/screen_status.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.key,
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Obx(() {
            if (controller.screenStatus == ScreenStatus.loading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (controller.screenStatus == ScreenStatus.loaded) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.allPosts.length,
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.allPosts[index];
                        return SizedBox(
                          width: MediaQueryX.width,
                          child: Text(
                            item.title ?? 'ooo',
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
      floatingActionButton: FloatingActionButton(onPressed: () => controller.denemeIstek()),
    );
  }
}
