import 'package:delivery/linkapi.dart';
import '../../../../core/class/crud.dart';

class ArchiveOrdersData {
  Crud crud;

  ArchiveOrdersData(this.crud);

  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.viewarchiveOrders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }

}
