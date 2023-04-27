import 'dart:convert';
import 'package:base_application/session_services.dart';
import 'package:get/get.dart';
import '../logger.dart';
import 'deneme_model.dart';
import '../models/i_base_model.dart';
import 'http_client.dart';
import 'http_urls.dart';

class Repository extends Header {
  Repository._();
  static final Repository instance = Repository._();

  Future<BaseHttpModel<DenemeModel>> denemeIstek(Object? body) async {
    try {
      var response = await HttpClient.instance.request(
        method: HttpMethods.POST,
        path: HttpUrls.register,
        body: body,
        headers: createHeader(addHeader: {'cdc': 'csdf'}),
      );

      DenemeModel model = DenemeModel().fromJson(jsonDecode(response!.body));
      return BaseHttpModel(status: response.statusCode, data: model);
    } catch (e, s) {
      /// TODO: burayı halledin:

      Log.error('error: $e, s: $s');
      rethrow;
    }
  }
}

class Header {
  Map<String, String> createHeader({Map<String, String> addHeader = const {}}) {
    var token = Get.find<SessionServices>().token.value;

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
      'Accept-Language': '*',
      ...addHeader,
    };

    return header;
  }
}
