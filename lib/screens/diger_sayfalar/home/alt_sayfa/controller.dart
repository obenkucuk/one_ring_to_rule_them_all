import 'package:base_application/components/state_mixin/app_state_mixin.dart';
import 'package:get/get.dart';
import 'dart:convert';

class AltSayfaController extends GetxController with AppStateMixin {
  DogModel dogModel = DogModel();

  @override
  void onReady() {
    super.onReady();
    getDog();
  }

  getDog() async {
    status = StateStatus.loading();
    final respose = await loadStates(Uri(scheme: 'https', host: 'dog.ceo', path: 'api/breeds/image/random'));
    dogModel = DogModel.fromJson(respose);
  }
}

class DogModel {
  DogModel({this.message, this.status});

  String? message;
  String? status;

  factory DogModel.fromRawJson(String str) => DogModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DogModel.fromJson(Map<String, dynamic> json) => DogModel(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
