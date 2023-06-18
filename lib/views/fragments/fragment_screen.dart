import 'package:flutter/material.dart';
import 'package:fragmentexample/controllers/fragment_controller.dart';
import 'package:fragmentexample/views/homescreen.dart';
import 'package:fragmentexample/views/subviews/detailone.dart';
import 'package:fragmentexample/views/subviews/detailtwo.dart';
import 'package:get/get.dart';

import '../../constants/pages_enum.dart';

class FragmentPage extends StatelessWidget {
  FragmentPage({super.key});
  final FragmentController controller =
      Get.find(tag: "fragmentmanager"); //fragment state'ini yöneteceğimiz controller'ı çekiyoruz.
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      //state'e göre işlem yapmak için Obx ile state dinlemeye başlıyoruz.
      switch (controller.state.value) {
        //state'in güncel haline göre sayfalarımızı return ediyoruz.
        case FragmentState.homeScreen:
          return HomeScreen();
        case FragmentState.detailOne:
          return DetailOne();
        case FragmentState.detailTwo:
          return DetailTwo();
        default:
          return HomeScreen();
      }
    });
  }
}
