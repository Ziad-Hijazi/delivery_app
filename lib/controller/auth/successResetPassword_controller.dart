import 'package:get/get.dart';
import 'package:delivery/core/constants/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLoginPade();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLoginPade() {
    Get.offAllNamed(AppRoutes.login);
  }
}
