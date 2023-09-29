import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/controller/homescreen_controller.dart';
import 'package:delivery/core/constants/color.dart';
import '../widgets/home/custom_bottom_app_bar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: const CustomBottomAppBarHome(),
        body: WillPopScope(
          child: controller.listPage.elementAt(controller.currentPage),
          onWillPop: () {
            Get.defaultDialog(
              title: "Warning",
              titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColor.primaryColor),
              middleText: "Do You Want To Exit From The App",
              onConfirm: () {
                exit(0);
              },
              buttonColor: AppColor.primaryColor,
              confirmTextColor: Colors.white,
              cancelTextColor: AppColor.primaryColor,
              onCancel: () {},
            );
            return Future.value(false);
          },
        ),
      ),
    );
  }
}
