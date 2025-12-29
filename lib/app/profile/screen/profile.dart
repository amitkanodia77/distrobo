import 'package:distrobo1/app/profile/controlar/profile_controlle.dart';
import 'package:distrobo1/app/profile/screen/edit_profile.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final profileControlle = Get.put(ProfileControlle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    "Profile",
                    style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/bell.png",
                      color: Mycolor.buttoncolor,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.w,
            ),
            Container(
              height: 30.w,
              width: 100.w,
              color: Mycolor.buttoncolor,
              child: Center(
                child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/profile.png",
                      height: 20.w,
                      width: 15.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "John Due",
                    style: MyTextStyle.gilroySemiBoldW418backgroundcolor,
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 17,
                        color: Mycolor.buttonTextcolor,
                      ),
                      Text(
                        "6391 Elgin St. Celina, Delaware 10299",
                        style: MyTextStyle.gilroyRegularW414buttonTextcolor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 55.h,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: profileControlle.profileimagelist.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              if (index ==
                                  profileControlle.profilenamelist.length - 1) {
                                profileControlle.logout();
                              }
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  profileControlle.profileimagelist[index],
                                  height: 20.w,
                                  width: 15.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                profileControlle.profilenamelist[index],
                                style: MyTextStyle.gilroyBoldW416titlecolor,
                              ),
                              subtitle: GestureDetector(
                                onTap: () {
                                  if (profileControlle.profilenamelist[index] == "logout") {
                                    profileControlle.logout();
                                  }
                                },
                                child: Text(
                                  profileControlle.profilesubdetaillist[index],
                                  style: MyTextStyle.GilroyRegularW414Textcolor,
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
            RoundedButton(
              onchange: () {
                Get.to(() => EditProfile());
              },
              btnName: 'Edit Profile',
              textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
              buttonwidth: 50.w,
            ),
          ],
        ),
      ),
    );
  }
}
