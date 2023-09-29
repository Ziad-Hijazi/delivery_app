import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/core/constants/color.dart';
import 'package:delivery/core/constants/image_asset.dart';
import 'package:delivery/core/constants/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: Get.width / 2,
              color: AppColor.primaryColor,
            ),
            Positioned(
                top: Get.width / 2.5,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage(AppImageAsset.person),
                  ),
                ))
          ],
        ),
        const SizedBox(height: 100),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoutes.archiveOrders);
                  },
                  trailing: const Icon(Icons.archive),
                  title: const Text("Archive"),
                ),
                ListTile(
                  onTap: () {
                    launchUrl(Uri.parse("tel:+970595592532"));
                  },
                  trailing: const Icon(Icons.phone),
                  title: const Text("Contact us"),
                ),
                ListTile(
                  onTap: () {
                    controller.logout();
                  },
                  trailing: const Icon(Icons.exit_to_app_outlined),
                  title: const Text("Logout"),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
