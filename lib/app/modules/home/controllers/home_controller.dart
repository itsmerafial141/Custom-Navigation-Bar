import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  var listTabTittle = [
    "Motor",
    "Luxury",
    "Sailing",
    "Gulets",
  ];

  RxInt selectedTab = 0.obs;

  late String selectedTabTittle = "Motor";
}
