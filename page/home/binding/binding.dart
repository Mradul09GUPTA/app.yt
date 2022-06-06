import 'package:get/get.dart';
import 'package:my_app_1/page/home/controller/home_controller.dart';
import 'package:my_app_1/sevices/sevises.dart';


class HomeBinding extends Bindings{



  @override
  void dependencies() {
    Get.put(ApiService());

   Get.put(HomeController());
    // TODO: implement dependencies
  }
}