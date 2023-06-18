import 'package:fragmentexample/constants/pages_enum.dart';
import 'package:get/get.dart';

class FragmentController extends GetxController {
  Rx<FragmentState> state = FragmentState.homeScreen
      .obs; // Güncel stateleri dinleyebilmek için FragmentState enum'ını tutacak bir reaktif değişken oluşturuyoruz.
}
