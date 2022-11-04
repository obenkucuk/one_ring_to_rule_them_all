import 'dart:convert';

import 'package:base_application/screens/read_asset/model/read_asset_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../components/overlay/overlay.dart';

class ReadAssetController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final jobRoleCtrl = TextEditingController();

  GlobalKey dimensionalKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentContext!;

  RxList<ReadAssetModel> modelList = <ReadAssetModel>[].obs;

  late OverlayX instance;

  LayerLink layerLink = LayerLink();
  showO() {
    instance.openOverlay(
      context: context,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.redAccent,
      ),
      closeOnTap: closeO,
    );
  }

  closeO() {
    instance.closeOverlay();
  }

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      instance = OverlayX(key: dimensionalKey, link: layerLink);
    });
  }

  Future<List<ReadAssetModel>> loadCountryData() async {
    try {
      String data = await rootBundle.loadString("assets/tickers.json");
      List jsonData = json.decode(data);

      for (var element in jsonData) {
        modelList.add(ReadAssetModel.fromJson(element));
      }

      return modelList;
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  void onClose() {
    super.onClose();
    instance.closeOverlay();
  }
}
