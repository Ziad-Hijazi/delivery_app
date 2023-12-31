import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:delivery/core/class/status_request.dart';
import 'package:delivery/core/constants/color.dart';
import 'package:delivery/core/functions/alert_exit_app.dart';
import 'package:delivery/view/widgets/auth/custom_body_text_auth.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/class/handling_data_view.dart';
import '../../../core/constants/image_asset.dart';
import '../../../core/functions/validInput.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/custom_text_form_auth.dart';
import '../../widgets/auth/custom_title_text_auth.dart';
import '../../widgets/auth/signin_or_signup_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("16".tr),
        titleTextStyle: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(color: AppColor.grey),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 35),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const CustomTitleTextAuth(text: "20"),
                          const SizedBox(
                            height: 25,
                          ),
                          const CustomBodyTextAuth(text: "21"),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextFormAuth(
                              isNumber: false,
                              myValidator: (val) {
                                return validInput(val!, 2, 20, "username");
                              },
                              myController: controller.username,
                              label: "22".tr,
                              hint: "23".tr,
                              icon: Icons.person_2_outlined),
                          CustomTextFormAuth(
                              isNumber: false,
                              myValidator: (val) {
                                return validInput(val!, 7, 50, "email");
                              },
                              myController: controller.email,
                              label: "11".tr,
                              hint: "12".tr,
                              icon: Icons.email_outlined),
                          CustomTextFormAuth(
                              hideText: true,
                              isNumber: false,
                              myValidator: (val) {
                                return validInput(val!, 10, 30, "password");
                              },
                              myController: controller.password,
                              label: "13".tr,
                              hint: "14".tr,
                              icon: Icons.lock_outline),
                          CustomTextFormAuth(
                              isNumber: true,
                              myValidator: (val) {
                                return validInput(val!, 8, 20, "phone");
                              },
                              myController: controller.phone,
                              label: "24".tr,
                              hint: "25".tr,
                              icon: Icons.phone_android_outlined),
                          CustomButtonAuth(
                              text: "16".tr,
                              onPressed: () {
                                controller.signUp();
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                          SignInOrSignUpText(
                              textOne: "43",
                              textTwo: "4",
                              onTap: () {
                                controller.goToSignIn();
                              }),
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
