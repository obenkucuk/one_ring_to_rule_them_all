import 'package:base_application/core/network_services/check_network_connection.dart';
import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class IAppException implements Exception {}

class NoInternetExeption implements Exception {
  int chackCount = 0;
  NoInternetExeption() {
    // TODO mesajları düzenle
    final currentState = Get.find<SettingsController>().snackbarKey.currentState!;

    currentState.showSnackBar(
      const SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text("İnternete Bağlı Değilsin!"),
      ),
    );

    noInternetLoop() async {
      await for (var event in Stream.periodic(const Duration(seconds: 3))) {
        print(chackCount);
        final isConnectedNetwork = await checkInternetConnection();

        if (isConnectedNetwork) {
          currentState.showSnackBar(const SnackBar(backgroundColor: Colors.greenAccent, content: Text("Bağlandın!")));
          break;
        } else if (chackCount > 5) {
          break;
        }
        chackCount++;
      }
    }

    noInternetLoop();
  }
}

class StatusExeption implements IAppException {
  final String? statusMessage;

  StatusExeption({this.statusMessage});
}
