import 'dart:convert';
import 'dart:io';

import 'package:base_application/components/exeptions/app_exeptions.dart';
import 'package:dio/dio.dart';

import 'chack_network_connection.dart';

abstract class INetvorkServices {
  ///Map halinde json dosyayı bekleniyor ise...
  fetchDataMapJson(Uri uri) async {}

  ///Liste halinde json dosyası bekleniyor ise...
  fetchDataMapList(Uri uri) async {}
}

class NetvorkServices extends INetvorkServices {
  @override
  Future<Response> fetchDataMapJson(uri) async {
    final dio = Dio();
    final isConnectedNetwork = await checkInternetConnection();
    if (!isConnectedNetwork) {
      throw NoInternetExeption();
    }

    final response = await dio.getUri(uri);

    if (response.statusCode != 200) {
      throw StatusExeption(statusMessage: response.statusMessage);
    }

    return response.data;
  }

// TODO doldur
  fetchDataMapList(uri) async {}
}
