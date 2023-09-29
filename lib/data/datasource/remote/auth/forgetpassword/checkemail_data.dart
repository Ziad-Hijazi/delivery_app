import 'package:delivery/linkapi.dart';
import '../../../../../core/class/crud.dart';

class CheckEmailData{
Crud crud;

CheckEmailData(this.crud);

postData(String email)async{
  var response=await crud.postData(AppLink.checkemail, {
    "email":email ,
  });
 return response.fold((l) => l, (r) => r);

}


}
 