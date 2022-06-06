import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:my_app_1/page/home/controller/home_controller.dart';
import 'package:my_app_1/sevices/sevises.dart';

import '../../detail/view/detail.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final homecontroller =Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Obx(() => Text(
           "${homecontroller.count}",
          style: TextStyle(fontSize:30),
        ),
        ),
        FlatButton(
        onPressed: (){
          //Get.to(DetailScreen());
          //Get.off(DetailScreen());// not allow to of back to home screen
          //Get.toNamed("/detail");
          homecontroller.increment();
         // print(apiService.fetchTextFromApi());
        },

        child: Text("increment"),
        color:Colors.black,
        textColor:Colors.white,
        ),
          FlatButton(
          onPressed: (){
           //Get.to(DetailScreen());
            //Get.off(DetailScreen());// not allow to of back to home screen
            Get.toNamed("/detail");
           //homecontroller.increment();
            // print(apiService.fetchTextFromApi());
            Get.snackbar("DETAIL", "WELCOME TO DETAIL");
             },
           child: Text("detail"),
           color:Colors.black,
            textColor:Colors.white,
    )
          ],
        )
      )
    );
  }
}