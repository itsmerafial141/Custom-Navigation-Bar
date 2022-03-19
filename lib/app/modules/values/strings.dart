import 'package:flutter/material.dart';

import '../home/widgets/custom_button_widget.dart';
import '../home/widgets/custom_tab_widget.dart';

class MyList {
  static var listTabTittle = [
    "Motor",
    "Luxury",
    "Sailing",
    "Gulets",
    "Profiles",
  ];

  static var listProfileMenusTittle = [
    "Home",
    "Order History",
    "Favorites",
    "Notification",
    "Help",
    "Membership Club",
    "Settings",
  ];

  static var listProfileMenusIcons = [
    Icons.home_outlined,
    Icons.list_alt_outlined,
    Icons.favorite_outline_outlined,
    Icons.notifications_outlined,
    Icons.help_outline_outlined,
    Icons.card_membership_outlined,
    Icons.settings_outlined,
  ];

  static var listLeftTabBar = List.generate(
    listTabTittle.length,
    (index) {
      return CustomTabWidget(
        tittle: listTabTittle[index],
        index: index,
      );
    },
  );
  static var listProfileMenus = List.generate(
    listProfileMenusTittle.length,
    (index) {
      return CustomButtonWidget(
        icon: listProfileMenusIcons[index],
        text: listProfileMenusTittle[index],
      );
    },
  );
}
