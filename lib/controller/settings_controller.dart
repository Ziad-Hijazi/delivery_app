import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:delivery/core/constants/routes.dart';
import 'package:delivery/core/services/services.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  logout() {
    String userId = myServices.sharedPreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic("delivery");
    FirebaseMessaging.instance.unsubscribeFromTopic("delivery${userId}");
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoutes.login);
  }
}
