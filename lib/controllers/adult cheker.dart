import 'package:get/get.dart';

class AdController extends GetxController{
 late bool isadult =false;
 String?msg = "";
bool get y=>isadult;

  void Isadult(int age){
    if(age>=18){
      isadult=true;
      msg="Yes";
      update();
    }
    else {
      isadult = false;
      msg = "No";
      update();
    }
  }

}