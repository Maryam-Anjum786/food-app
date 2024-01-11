import 'package:get/get.dart';

class Controller extends GetxController {
  var selectedContIndex = 1.obs;
  late List<bool> isSelected;
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  Controller() {
    isSelected = List.generate(6, (index) => false).obs;
  }
  void toggleIcon(int index) {
    isSelected[index] = !isSelected[index];
  }
}
