import 'package:flutter/material.dart';

import '../../values/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.text,
    required this.icon,
    this.onPressed,
  });

  final String text;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: MediaQuery.of(context).viewPadding.top * 2,
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: MyColors.primaryColor,
          ),
          SizedBox(
            width: 20,
          ),
          Text(text),
        ],
      ),
    );
  }
}
