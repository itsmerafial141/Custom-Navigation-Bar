import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  RxInt selectedTab = 0.obs;

  late String selectedTabTittle = "Motor";
}
