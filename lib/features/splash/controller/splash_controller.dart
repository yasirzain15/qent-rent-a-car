import 'package:get/get.dart';
import 'package:qent/core/constants/app_routes.dart';

class SplashController extends GetxController {
  void goToNextSplash() {
    Get.toNamed(AppRoutes.splash2);
  }

  void goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
