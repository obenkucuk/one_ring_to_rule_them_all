import 'package:get/get.dart';
import 'dart:convert';

class AltSayfaController extends GetxController {
  DogModel dogModel = DogModel();
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
