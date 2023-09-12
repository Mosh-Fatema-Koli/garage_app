
import 'package:get/get.dart';


class TabController extends GetxController {
  var selectedTabIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedTabIndex.value = index;
  }
}