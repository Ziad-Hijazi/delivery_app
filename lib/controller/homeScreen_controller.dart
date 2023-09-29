import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery/view/screens/orders/accepted.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screens/orders/pending.dart';
import '../view/screens/settings.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List<Widget> listPage = [
    const OrdersPending(),
    const OrdersAccepted(),
    const SettingsPage(),
  ];
  List BottomAppBar = [
    {"title": "Pending", "icon": Icons.home},
    {"title": "Accepted", "icon": Icons.done},
    {"title": "Setting", "icon": Icons.settings},
  ];
  @override
  changePage(i) {
    currentPage = i;
    update();
  }
}
