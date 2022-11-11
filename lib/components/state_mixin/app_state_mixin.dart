import 'package:base_application/core/exeptions/app_exeptions.dart';
import 'package:base_application/core/network_services/check_network_connection.dart';
import 'package:base_application/core/network_services/network_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin AppStateMixin on GetxController {
  final Rx<StateStatus> _status = StateStatus.loading().obs;

  StateStatus get status => _status.value;
  set status(StateStatus status) {
    _status.value = status;
  }
  // TODO zamanaşımı yapılacak

  Future loadStates(Uri uri) async {
    while (true) {
      try {
        final response = await NetworkServices().fetchDataMapJson(uri);
        status = StateStatus.loaded();
        return response.data;
      } on NoInternetExeption {
        status = StateStatus.noConnection();

        await for (var _ in Stream.periodic(const Duration(seconds: 3))) {
          print("mixin await for");
          print(status.isNoConnection);
          if (await checkInternetConnection()) {
            status = StateStatus.loading();
            break;
          }
          if (!status.isNoConnection) {
            return;
          }
        }

        print("await for SONRASI");
      } on StatusExeption catch (e) {
        status = StateStatus.error(e.statusMessage.toString());
      } catch (e) {
        status = StateStatus.error("Unhandled Error");
      }
    }
  }

  @override
  void onClose() {
    super.onClose();
    status = StateStatus._(isPageActive: false);
  }

  Widget buildStatus({
    Widget? onLoading,
    required Widget onLoaded,
    Widget? onLowConnection,
    Widget? onNoConnection,
    Widget? onError,
  }) {
    // NOT: defoult lar düzenlenecek

    if (status.isLoading) {
      return onLoading ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (status.isLoaded) {
      return onLoaded;
    } else if (status.isLowConnection) {
      return onLowConnection ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (status.isNoConnection) {
      return onNoConnection ?? const Center(child: Text("No Connection"));
    } else {
      return onError ??
          Center(
            child: Column(
              children: [
                Text("Bi şeyler yanlış gitti! : ${status.errorMessage}"),
              ],
            ),
          );
    }
  }
}

class StateStatus {
  final bool isPageActive;
  final bool isLoading;
  final bool isLoaded;
  final bool isNoConnection;
  final bool isLowConnection;
  final bool isError;
  final String errorMessage;

  StateStatus._({
    this.isPageActive = true,
    this.isLoading = false,
    this.isLoaded = false,
    this.isNoConnection = false,
    this.isLowConnection = false,
    this.isError = false,
    this.errorMessage = "",
  });

  factory StateStatus.loading() {
    return StateStatus._(isLoading: true);
  }
  factory StateStatus.loaded() {
    return StateStatus._(isLoaded: true);
  }
  factory StateStatus.noConnection() {
    return StateStatus._(isNoConnection: true);
  }
  factory StateStatus.lowConnection() {
    return StateStatus._(isLowConnection: true);
  }
  factory StateStatus.error(String message) {
    return StateStatus._(isError: true, errorMessage: message);
  }
}
