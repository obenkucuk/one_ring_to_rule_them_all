import 'package:base_application/core/network_services/check_network_connection.dart';
import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class IAppException implements Exception {}

class NoInternetExeption implements Exception {
  int checkCount = 0;
  NoInternetExeption() {
    // TODO mesajları düzenle
    final settingController = Get.find<SettingsController>();

    if (!settingController.isNetvorkChecking.value) {
      settingController.snackbarKey.currentState!.showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("İnternete Bağlı Değilsin!"),
        ),
      );
    }

    noInternetLoop() async {
      settingController.isNetvorkChecking.value = true;
      await for (var _ in Stream.periodic(const Duration(seconds: 3))) {
        print(checkCount);
        final isConnectedNetwork = await checkInternetConnection();

        if (isConnectedNetwork) {
          settingController.snackbarKey.currentState!.showSnackBar(
              const SnackBar(
                  backgroundColor: Colors.greenAccent,
                  content: Text("Bağlandın!")));
          settingController.isNetvorkChecking.value = false;
          break;
        } else if (checkCount > 20) {
          settingController.isNetvorkChecking.value = false;
          break;
        }
        checkCount++;
      }
    }

    if (!settingController.isNetvorkChecking.value) {
      noInternetLoop();
    }
  }
}

class StatusExeption implements IAppException {
  final String? statusMessage;

  StatusExeption({this.statusMessage});
}
