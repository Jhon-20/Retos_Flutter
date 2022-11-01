import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void listCard() {
    Get.offNamed(AppRoutes.MENU);
  }
}
