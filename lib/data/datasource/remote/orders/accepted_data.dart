import 'package:delivery/linkapi.dart';
import '../../../../core/class/crud.dart';

class AcceptedOrdersData {
  Crud crud;

  AcceptedOrdersData(this.crud);

  getData(String deliveryid) async {
    var response =
        await crud.postData(AppLink.viewacceptedOrders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }

  doneDelivery(String ordersid, String usersid) async {
    var response = await crud
        .postData(AppLink.doneOrders, {"ordersid": ordersid, "usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }
}
