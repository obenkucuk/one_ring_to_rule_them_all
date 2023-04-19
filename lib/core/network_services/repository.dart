import 'dart:convert';
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
        headers: createHeader(),
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

// TODO(obenkucuk) buraya token al
class Header {
  final String? token;

  Header({this.token});

  Map<String, String> createHeader({Map<String, String> addHeader = const {}}) {
    /// TODO(obenkucuk) Accept-Language localden alıncak!

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
      'Accept-Language': '*',
      ...addHeader,
    };

    return header;
  }
}
