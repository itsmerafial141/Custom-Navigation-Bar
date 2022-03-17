import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../values/colors.dart';
import '../controllers/home_controller.dart';

class CustomTabWidget extends GetView<HomeController> {
  const CustomTabWidget({required this.tittle, required this.index});

  final String tittle;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              color: controller.selectedTab.value == index
                  ? MyColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          Positioned(
            left: 80,
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: controller.selectedTab.value == index
                    ? Colors.white
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 10,
            ),
            // color: Colors.red,
            height: 100,
            width: 50,
            child: MaterialButton(
              onPressed: () {
                controller.selectedTab.value = index;
                controller.selectedTabTittle = tittle;
              },
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  controller.listTabTittle[index],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
