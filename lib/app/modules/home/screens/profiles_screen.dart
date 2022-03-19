import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../values/strings.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_button_widget.dart';

class ProfilesScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 70, top: MediaQuery.of(context).viewPadding.top),
      padding: EdgeInsets.only(
        left: 25,
        top: 10,
        right: 10,
        bottom: 10,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ProfileDetailWidget(),
                SizedBox(
                  height: 30,
                ),
                ListView(
                  shrinkWrap: true,
                  children: MyList.listProfileMenus,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButtonWidget(
                  icon: Icons.exit_to_app_outlined,
                  text: "Log out",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          profileImage(context),
          SizedBox(
            height: 20,
          ),
          profileName(),
          SizedBox(
            height: 5,
          ),
          profileEmail(),
        ],
      ),
    );
  }

  Text profileEmail() {
    return Text(
      "rfitraalamsyah@gmail.com",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    );
  }

  Text profileName() {
    return Text(
      "Rafi Fitra Alamsyah",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }

  Container profileImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.25,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/images/profile.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
