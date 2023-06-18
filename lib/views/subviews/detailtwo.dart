import 'package:flutter/material.dart';
import 'package:fragmentexample/constants/pages_enum.dart';
import 'package:get/get.dart';

import '../../controllers/fragment_controller.dart';

class DetailTwo extends StatelessWidget {
  DetailTwo({super.key});
  final FragmentController controller =
      Get.find(tag: "fragmentmanager"); //stateleri güncelleyebilmek için fragment controller'ını alıyoruz.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
            onPressed: () => controller.state.value =
                FragmentState.detailOne, //geri dönmek için güncel state'i DetailOne olarak değiştiriyoruz.
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text("DETAIL 2"),
          ),
        ],
      ),
    );
  }
}
