import 'dart:developer';
import 'package:base_application/components/batu_shimmer.dart';
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
      log("loadStates fonksiyonundaki while döngüsü sayısı");
      try {
        final response = await NetworkServices().fetchDataFromSingleMap(uri);
        await Future.delayed(const Duration(seconds: 200));

        status = StateStatus.loaded();
        return response.data;
      } on NoInternetException {
        status = StateStatus.noConnection();

        await for (var _ in Stream.periodic(const Duration(seconds: 3))) {
          if (await checkInternetConnection()) {
            status = StateStatus.loading();
            break;
          }
          if (!status.isNoConnection) {
            return;
          }
        }
      } on StatusException catch (e) {
        status = StateStatus.error(e.statusMessage.toString());
        break;
      } catch (e) {
        status = StateStatus.error("Unhandled Error: $e");
        break;
      }
    }
  }

  /// bunu yapacam amk!
  Stream<int> checkConnectionStream() async* {
    yield* Stream.periodic(const Duration(seconds: 2), (count) {
      return count;
    });
  }

  Widget buildStateSize({
    int depth = 20,
    Duration duration = const Duration(seconds: 1),
    double? borderRadius = 10,
    Alignment? alignment = Alignment.center,
    required double width,
    required double height,
    required Widget child,
  }) {
    // NOT: defoult lar düzenlenecek
    if (status.isLoaded) {
      return SizedBox(height: height, width: width, child: child);
    } else {
      return BatuShimmer.sized(
        width: width,
        height: height,
        depth: depth,
        duration: duration,
        alignment: alignment,
        borderRadius: borderRadius,
      );
    }
  }

  Widget buildStateText({
    int depth = 20,
    Duration duration = const Duration(seconds: 1),
    int? maxLine = 3,
    double? textSize = 14,
    double? borderRadius = 10,
    Alignment? alignment = Alignment.center,
    double? width,
    required Widget child,
  }) {
    // NOT: defoult lar düzenlenecek
    if (status.isLoaded) {
      return child;
    } else {
      return BatuShimmer.text(
        depth: depth,
        duration: duration,
        maxLine: maxLine,
        textSize: textSize,
        alignment: alignment,
        borderRadius: borderRadius,
        width: width,
      );
    }
  }

  Widget buildStateChildren({
    int depth = 20,
    Duration duration = const Duration(seconds: 1),
    double? borderRadius = 10,
    Alignment? alignment = Alignment.center,
    double? width,
    double? height,
    required Widget childLoading,
    required Widget child,
  }) {
    // NOT: defoult lar düzenlenecek
    if (status.isLoaded) {
      return child;
    } else {
      return BatuShimmer.generated(
        depth: depth,
        duration: duration,
        alignment: alignment,
        borderRadius: borderRadius,
        width: width,
        height: height,
        child: childLoading,
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
    status = StateStatus._(isPageActive: false);
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
