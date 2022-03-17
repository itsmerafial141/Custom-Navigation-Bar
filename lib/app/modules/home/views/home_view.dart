import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sea_adventure/app/modules/home/screens/gulets_screen.dart';
import 'package:sea_adventure/app/modules/home/screens/luxury_screen.dart';
import 'package:sea_adventure/app/modules/home/screens/sailing_screen.dart';
import 'package:sea_adventure/app/modules/values/colors.dart';

import '../controllers/home_controller.dart';
import '../screens/motor_screen.dart';
import '../widgets/custom_tab_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var listLeftTabBar = List.generate(
      controller.listTabTittle.length,
      (index) {
        return CustomTabWidget(
          tittle: controller.listTabTittle[index],
          index: index,
        );
      },
    );
    
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Stack(
        children: [
          Obx(
            () => controller.selectedTab.value == 0
                ? MotorScreen()
                : controller.selectedTab.value == 1
                    ? LuxuryScreen()
                    : controller.selectedTab.value == 2
                        ? SailingScreen()
                        : controller.selectedTab.value == 3
                            ? GuletsScreen()
                            : MotorScreen(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: listLeftTabBar,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 30,
            ),
            child: Image(
              height: 50,
              width: 50,
              image: AssetImage("assets/images/logo_app.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
