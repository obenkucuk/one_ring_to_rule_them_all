import 'package:base_application/session_services.dart';
import 'package:get/get.dart';
import '../logger.dart';
import '../models/i_base_model.dart';
import 'deneme_model.dart';
import 'package:http/http.dart' as http;

class Repository extends Header {
  Repository._();
  static final Repository instance = Repository._();

  Future<BaseHttpModel<List<JsonPlaceHolderPosts>>> getJsonPlaceholderPosts() async {
    try {
      var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      List<JsonPlaceHolderPosts> model = await JsonPlaceHolderPosts().fromListString(response.body);

      return BaseHttpModel(status: response.statusCode, data: model);
    } catch (e, s) {
      Log.error('error: $e, s: $s');
      rethrow;
    }
  }

  //  Future<BaseHttpModel<DenemeModel>> denemeIstek(Object? body) async {
  // Future<BaseHttpModel<JsonPlaceHolderPosts>> getJsonPlaceholderPosts() async {
  //   try {
  //     var response = await HttpClient.instance.request(
  //       method: HttpMethods.POST,
  //       path: HttpUrls.register,
  //       body: body,
  //       headers: createHeader(addHeader: {'cdc': 'csdf'}),
  //     );
  //     var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  //     JsonPlaceHolderPosts model = await JsonPlaceHolderPosts().jsonDecoder(response.body);

  //     DenemeModel model = DenemeModel().fromJson(jsonDecode(response!.body));
  //     return BaseHttpModel(status: response.statusCode, data: model);
  //   } catch (e, s) {
  /// TODO: burayı halledin:

  //     Log.error('error: $e, s: $s');
  //     rethrow;
  //   }
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
