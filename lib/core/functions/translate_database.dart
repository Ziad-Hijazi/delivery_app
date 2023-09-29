import 'package:get/get.dart';
import 'package:delivery/core/services/services.dart';

translateDatabase(columnAr, columnEn) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return columnAr;
  } else {
    return columnEn;
  }
}
