import 'package:delivery/controller/orders/accepted_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:delivery/controller/orders/pending_controller.dart';
import 'package:delivery/core/constants/color.dart';
import 'package:delivery/core/constants/routes.dart';
import '../../../data/model/orders_model.dart';

class CardOrdersListAccepted extends GetView<AcceptedOrdersController> {
  final OrdersModel listData;

  const CardOrdersListAccepted({super.key, required this.listData});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Order Number : #${listData.ordersId.toString()}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  Jiffy(listData.ordersDatetime, "yyyy-MM-dd").fromNow(),
                  style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
                "Order Type : ${controller.printOrderType(listData.ordersType.toString())}"),
            Text("Order Price : ${listData.ordersPrice}\$"),
            Text("Delivery Price : ${listData.ordersPricedelivery}\$"),
            Text(
                "Payment Method : ${controller.printPaymentMethod(listData.ordersPaymentmethod.toString())}"),
            Text(
                "Order Status : ${controller.printOrderStatus(listData.ordersStatus.toString())}"),
            const Divider(),
            Row(
              children: [
                Text(
                  "Total Price : ${listData.ordersTotalprice.toString()}\$",
                  style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.ordersDetails,
                        arguments: {"ordersmodel": listData});
                  },
                  color: AppColor.primaryColor2a,
                  textColor: AppColor.primaryColor2,
                  child: const Text("Details"),
                ),
                SizedBox(width: 10),
                if (listData.ordersStatus! == "3")
                  MaterialButton(
                    onPressed: () {
                      controller.doneDelivery(
                          listData.ordersId!, listData.ordersUsersid!);
                    },
                    color: AppColor.primaryColor2a,
                    textColor: AppColor.primaryColor2,
                    child: const Text("Done"),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
