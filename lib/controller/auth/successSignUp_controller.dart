import 'package:get/get.dart';
import 'package:delivery/core/constants/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLoginPade();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToLoginPade() {
    Get.offAllNamed(AppRoutes.login);
  }
}
