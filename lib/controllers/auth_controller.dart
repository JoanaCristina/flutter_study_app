import 'package:get/get.dart';

class AuthController extends GetxController {
  @override
  void onReady() async {
   await Future.delayed(const Duration(seconds: 2));
    initAuth();
    super.onReady();
  }

  void initAuth() {
    navigateToIntroduction();
  }

  void navigateToIntroduction() {
    Get.offAllNamed("/introduction");
  }
}
