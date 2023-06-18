import 'package:flutter/material.dart';
import 'package:fragmentexample/controllers/fragment_controller.dart';
import 'package:get/get.dart';

import '../constants/pages_enum.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final FragmentController controller =
      Get.find(tag: "fragmentmanager"); //alt sayfamıza gitmek için fragment controller'ını alıyoruz.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("HOME SCREEN"),
          Center(
            child: ElevatedButton(
              onPressed: () => controller.state.value = FragmentState
                  .detailOne, //navigation işlemi yapmak için güncel state'in DetailOne olacağını söylüyoruz.
              child: const Text("Go To Detail Page"),
            ),
          ),
        ],
      ),
    );
  }
}
