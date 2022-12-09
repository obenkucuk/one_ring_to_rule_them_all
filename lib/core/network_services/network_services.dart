abstract class INetworkServices {
  ///  Map halinde json dosyayı bekleniyor ise...
  fetchDataFromSingleMap(Uri uri) async {}

  ///  Liste halinde json dosyası bekleniyor ise...
  fetchDataFromMapsOfList(Uri uri) async {}
}

// class NetworkServices extends INetworkServices {
//   final dio = Dio();

//   @override
//   Future<Response> fetchDataFromSingleMap(uri) async {
//     final isConnectedNetwork = await checkInternetConnection();

//     if (!isConnectedNetwork) throw NoInternetException();

//     final response = await dio.getUri(uri);

//     if (response.statusCode != HttpStatus.ok) {
//       throw StatusException(statusMessage: response.statusMessage);
//     }

//     return response;
//   }

//   @override
//   fetchDataFromMapsOfList(uri) async {}
// }
