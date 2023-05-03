import 'dart:io';
import 'package:base_application/components/bottom_sheet/bottom_sheet_x.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../../../core/network_services/deneme_model.dart';
import '../../../../core/network_services/repository.dart';
import '../../../../core/screen_status/screen_status.dart';
import '../../../../main_screen.dart';

class HomeController extends GetxController with BottomSheetX {
  final key = GlobalKey();

  BuildContext get context => key.currentContext!;

  List<JsonPlaceHolderPosts> allPosts = [];
  final Rx<ScreenStatus> _screenStatus = ScreenStatus.loading.obs;
  ScreenStatus get screenStatus => _screenStatus.value;
  set screenStatus(ScreenStatus status) => _screenStatus.value = status;

  Future<void> denemeIstek() async {
    try {
      screenStatus = ScreenStatus.loading;
      await Future.delayed(const Duration(seconds: 3));
      var response = await Repository.instance.getJsonPlaceholderPosts();
      if (response.status == HttpStatus.ok) {
        allPosts = response.data!;

        screenStatus = ScreenStatus.loaded;
      } else {
        await MainScreenInheritedWidget.of(context).showSnacbar(
          response.error!.message,
          ScaffoldMessengerType.error,
        );
      }
    } catch (e) {
      await MainScreenInheritedWidget.of(context).showSnacbar(
        e.toString(),
        ScaffoldMessengerType.error,
      );
    }
  }

  Future _ready() async {
    try {
      screenStatus = ScreenStatus.loading;
      await Future.wait([]);
      screenStatus = ScreenStatus.loaded;
    } catch (e) {
      screenStatus = ScreenStatus.error;
      debugPrint(e.toString());
    }
  }

  @override
  void onInit() {
    super.onInit();
    _ready();
  }
}
