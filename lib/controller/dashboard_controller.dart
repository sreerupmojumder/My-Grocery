import 'package:get/get.dart';
import 'package:my_grocery/controller/home_controller.dart';

class DashboardController extends GetxController{
  static DashboardController instance = Get.find();
  var tabIndex = 0;

  void updateIndex (int index){
    tabIndex = index;
    update();
  }
}