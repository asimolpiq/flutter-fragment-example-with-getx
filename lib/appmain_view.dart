import 'package:flutter/material.dart';
import 'package:fragmentexample/constants/pages_enum.dart';
import 'package:fragmentexample/constants/project_lists.dart';
import 'package:get/get.dart';

import 'controllers/fragment_controller.dart';

class AppMainView extends StatelessWidget {
  // Tüm sayfalarımızı göstereceğimiz Ana Sayfamız.
  AppMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => ProjectLists.instance.pages[
          currentIndex.value]), // ProjectList içerisinde oluşturduğumuz Sayfalar listemizin güncel index'ine göre
      //sayfasını alıyoruz ve Reaktif işlemlerden yararlanabilmesi için Obx widget'ı ile sarmalıyoruz.
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: ProjectLists.instance.bottomNavItems,
          currentIndex: currentIndex.value,
          onTap: (index) {
            if (index == 0) {
              // eğer indeximiz HomeScreen ise FragmentController'ın içindeki state'i home screen olarak güncelliyoruz.
              controller.state.value = FragmentState.homeScreen;
            }
            currentIndex.value = index; // güncel indeximizi reaktif değişkenimize atıyoruz.
          },
        ),
      ),
    );
  }

  final FragmentController controller = Get.put(FragmentController(),
      tag: "fragmentmanager"); //fragment sayfamızı kontrol edeceğimiz controller'ı oluşturuyoruz.

  final RxInt currentIndex = 0.obs; //güncel indexi tutacağımız reaktif değişkenimizi oluşturuyoruz.
}
