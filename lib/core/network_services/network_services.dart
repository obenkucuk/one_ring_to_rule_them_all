import 'package:base_application/core/exeptions/app_exeptions.dart';
import 'package:dio/dio.dart';

import 'check_network_connection.dart';

abstract class INetworkServices {
  ///Map halinde json dosyayı bekleniyor ise...
  fetchDataMapJson(Uri uri) async {}

  ///Liste halinde json dosyası bekleniyor ise...
  fetchDataMapList(Uri uri) async {}
}

class NetworkServices extends INetworkServices {
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

    return response;
  }

// TODO doldur
  fetchDataMapList(uri) async {}
}
