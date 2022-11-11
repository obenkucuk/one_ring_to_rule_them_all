import 'package:base_application/core/exeptions/app_exeptions.dart';
import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

import 'check_network_connection.dart';

abstract class INetworkServices {
  ///  Map halinde json dosyayı bekleniyor ise...
  fetchDataFromSingleMap(Uri uri) async {}

  ///  Liste halinde json dosyası bekleniyor ise...
  fetchDataFromMapOfList(Uri uri) async {}
}

class NetworkServices extends INetworkServices {
  final dio = Dio();

  @override
  Future<Response> fetchDataFromSingleMap(uri) async {
    final isConnectedNetwork = await checkInternetConnection();
    if (!isConnectedNetwork) {
      throw NoInternetException();
    }
    final response = await dio.getUri(uri);

    if (response.statusCode != 200) {
      throw StatusExeption(statusMessage: response.statusMessage);
    }

    return response;
  }

// TODO doldur
  fetchDataFromMapOfList(uri) async {}
}
