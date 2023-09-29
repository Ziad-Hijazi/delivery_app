import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:delivery/core/constants/routes.dart';
import 'package:delivery/core/middleware/myMiddleware.dart';
import 'package:delivery/view/screens/auth/forgetPassword/forget_password.dart';
import 'package:delivery/view/screens/auth/login.dart';
import 'package:delivery/view/screens/auth/forgetPassword/reset_password.dart';
import 'package:delivery/view/screens/auth/signup.dart';
import 'package:delivery/view/screens/auth/forgetPassword/success_resetpassword.dart';
import 'package:delivery/view/screens/auth/success_signup.dart';
import 'package:delivery/view/screens/auth/forgetPassword/verify_code.dart';
import 'package:delivery/view/screens/auth/verify_code_signup.dart';
import 'package:delivery/view/screens/homeScreen.dart';
import 'package:delivery/view/screens/languages.dart';
import 'package:delivery/view/screens/orders/archive.dart';
import 'package:delivery/view/screens/orders/details.dart';
import 'package:delivery/view/screens/orders/pending.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Languages(), middlewares: [MyMiddleware()]),
  GetPage(
    name: AppRoutes.archiveOrders,
    page: () => const ArchiveOrders(),
  ),
  GetPage(
    name: AppRoutes.ordersDetails,
    page: () => const OrdersDetails(),
  ),
  GetPage(
    name: AppRoutes.pendingOrders,
    page: () => const OrdersPending(),
  ),
  GetPage(
    name: AppRoutes.homepage,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoutes.signUp,
    page: () => const SignUp(),
  ),
  GetPage(
    name: AppRoutes.forgetPassword,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: AppRoutes.verifyCode,
    page: () => const VerifyCode(),
  ),
  GetPage(
    name: AppRoutes.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppRoutes.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
  GetPage(
    name: AppRoutes.successSignUp,
    page: () => const SuccessSignUp(),
  ),
  GetPage(
    name: AppRoutes.verifyCodeSignUp,
    page: () => const VerifyCodeSignUp(),
  ),
];
