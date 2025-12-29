import 'package:distrobo1/app/home/controlar/home_screen_controller.dart';
import 'package:distrobo1/app/home/screen/candy_snacks.dart';
import 'package:distrobo1/app/home/screen/drawer.dart';
import 'package:distrobo1/app/home/screen/scan_qr_code.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/items.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeScreenController = Get.put(HomeScreenController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Mycolor.backgroundcolor,
        endDrawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                  leading: Image.asset(
                    "assets/images/locationImage.png",
                    height: 35,
                  ),
                  title: Text(
                    "Home",
                    style: MyTextStyle.gilroyMediumW416subtitelcolor,
                  ),
                  subtitle: Text(
                    "6391 Elgin St. Celina, Delaware 10299",
                    style: MyTextStyle.GilroyRegularW410subtitelcolor,
                  ),
                  trailing: SizedBox(
                    width: 30.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/bell.png",
                          height: 10.w,
                          width: 8.w,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                          child: Image.asset(
                            "assets/images/list.png",
                            height: 10.w,
                            width: 8.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 6.h,
                      width: 70.w,
                      child: Textformfild(
                        hintText: "Search",
                        icon: Icon(Icons.search),
                        suffixIcony: Icon(Icons.qr_code_scanner_rounded),
                        onTapSurffixqr: () {
                          Get.to(() => ScanQrCode());
                        },
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                        color: Mycolor.buttoncolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/bell.png",
                          height: 3.h,
                          width: 3.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: homeScreenController.imagelist.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Image.asset(
                              homeScreenController.imagelist[index],
                              fit: BoxFit.cover,
                            )),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shop By Category",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    Text(
                      "See All",
                      style: MyTextStyle.gilroySemiBoldW414redcolor,
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 35.w,
                  child: ListView.builder(
                    itemCount: homeScreenController.shopByCategorylist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                () => CandySnacks(),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                homeScreenController.shopByCategorylist[index],
                                height: 20.w,
                                width: 20.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.w,
                          ),
                          SizedBox(
                            width: 30.w,
                            child: Text(
                              textAlign: TextAlign.center,
                              homeScreenController
                                  .shopByCategoryTextlist[index],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  child: ListView.builder(
                    itemCount: homeScreenController.imagelist2.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                        child: Image.asset(
                          homeScreenController.imagelist2[index],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Candy & Snacks",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CandySnacks());
                      },
                      child: Text(
                        "See All",
                        style: MyTextStyle.gilroySemiBoldW414redcolor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 3.w,
                ),
                SizedBox(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(
                        imageUrl: 'assets/images/Snacks.png',
                        onAdd: () {},
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 3.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Candy & Snacks",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CandySnacks());
                      },
                      child: Text(
                        "See All",
                        style: MyTextStyle.gilroySemiBoldW414redcolor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 3.w,
                ),
                SizedBox(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(
                        imageUrl: 'assets/images/Candy.png',
                        onAdd: () {},
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
