import 'package:flutter/material.dart';
import 'package:fragmentexample/constants/pages_enum.dart';
import 'package:get/get.dart';

import '../../controllers/fragment_controller.dart';

class DetailOne extends StatelessWidget {
  DetailOne({super.key});
  final FragmentController controller =
      Get.find(tag: "fragmentmanager"); //stateleri güncelleyebilmek için fragment controller'ını alıyoruz.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
            onPressed: () => controller.state.value =
                FragmentState.homeScreen, //geri dönmek için güncel state'i homepage olarak değiştiriyoruz.
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("DETAIL 1"),
          ),
          ElevatedButton(
            onPressed: () => controller.state.value =
                FragmentState.detailTwo, //navigation işlemi yapmak için güncel state'in DetailTwo olacağını söylüyoruz.
            child: const Text("Go To Detail 2"),
          ),
        ],
      ),
    );
  }
}
