import 'package:base_application/components/state_mixin/app_state_mixin.dart';
import 'package:base_application/pages/deneme_model.dart';
import 'package:get/get.dart';

class DenemeController extends GetxController with AppStateMixin {
  DenemeModel data = DenemeModel();

  @override
  void onInit() async {
    super.onInit();
    data = DenemeModel();

    final res = await loadStates(
      Uri(scheme: "https", host: "www.boredapi.com", path: "api/activity"),
    );

    if (status.isLoaded) {
      data = DenemeModel.fromJson(res);
    }
  }
}
