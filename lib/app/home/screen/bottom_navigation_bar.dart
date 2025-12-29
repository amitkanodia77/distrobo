import 'package:distrobo1/app/home/controlar/bottom_navigater_controller.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomnavigationbar extends StatelessWidget {
  const Bottomnavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigaterController = Get.put(BottomNavigaterController());

    return Scaffold(
      body: Obx(() =>
  bottomNavigaterController
      .screenList[bottomNavigaterController.screenindex.value],
),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.all(
                MyTextStyle.GilroyRegularW410subtitelcolor)),
        child: Obx(
          () => NavigationBar(
            height: 80,
            backgroundColor: Mycolor.itemscolor,
            elevation: 0,
            selectedIndex: bottomNavigaterController.screenindex.value,
            onDestinationSelected: (screenList) {
              bottomNavigaterController.screenindex.value = screenList;
            },
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(
                icon: Icon(Icons.grid_view),
                label: "Shop",
              ),
              NavigationDestination(
                  icon: Icon(Icons.favorite), label: "My List"),
              NavigationDestination(
                  icon: Icon(Icons.shopping_bag), label: "Cart"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
