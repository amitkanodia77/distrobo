import 'package:distrobo1/app/profile/controlar/edit_profile_controlar.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/password_Textformfild.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void address(BuildContext context) {
  final editProfileController = Get.put(EditProfileController());

  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
        height: 80.h,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 1.h),
                  Text(
                    "Edit Profile",
                    style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                  ),
                  SizedBox(height: 2.h),
                  ListView.builder(
                    itemCount: editProfileController.editprofileTextlist.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 1.h),
                          Text(
                            editProfileController.editprofilehintText[index],
                            style: MyTextStyle.gilroySemiBoldW418titelcolor,
                          ),
                          SizedBox(height: 1.h),
                          Textformfild(
                            hintText: editProfileController
                                .editprofilehintText[index],
                            icon: Icon(
                              editProfileController.editprofileiconlist[index],
                              color: Mycolor.unfocascolor,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: RoundedButton(
                      buttonHeight: 7.h,
                      buttonwidth: 50.w,
                      onchange: () {},
                      btnName: "Save",
                      textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

void name(BuildContext context) {
  // final editProfileController = Get.put(EditProfileController());

  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
          height: 50.h,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "Name",
                    style: MyTextStyle.gilroyBoldW426titelcolor,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "First Name",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
                  Textformfild(
                    hintText: "Enter Your Name",
                    icon: Icon(
                      Icons.person_outline,
                      color: Mycolor.unfocascolor,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    "Last Name",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
                  Textformfild(
                    hintText: "Enter Last Name",
                    icon: Icon(
                      Icons.person_outline,
                      color: Mycolor.unfocascolor,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: RoundedButton(
                      buttonHeight: 7.h,
                      buttonwidth: 50.w,
                      onchange: () {},
                      btnName: "Save",
                      textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ));
    },
  );
}

void phonenumber(BuildContext context) {
  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
          height: 50.h,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "Phone Number",
                    style: MyTextStyle.gilroyBoldW426titelcolor,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Phone Number",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
                  Textformfild(
                    hintText: "Enter Phone Number",
                    icon: Icon(
                      Icons.person_outline,
                      color: Mycolor.unfocascolor,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: RoundedButton(
                      buttonHeight: 7.h,
                      buttonwidth: 50.w,
                      onchange: () {},
                      btnName: "Save",
                      textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
                    ),
                  ),
                ],
              ),
            ),
          ));
    },
  );
}

void email(BuildContext context) {
  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
          height: 50.h,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "Email ID",
                    style: MyTextStyle.gilroyBoldW426titelcolor,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "email",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
                  Textformfild(
                    hintText: "Enter Your email",
                    icon: Icon(
                      Icons.person_outline,
                      color: Mycolor.unfocascolor,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: RoundedButton(
                      buttonHeight: 7.h,
                      buttonwidth: 50.w,
                      onchange: () {},
                      btnName: "Save",
                      textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
                    ),
                  ),
                ],
              ),
            ),
          ));
    },
  );
}

void password(BuildContext context) {
  final editProfileController = Get.put(EditProfileController());
  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
          height: 50.h,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "password",
                    style: MyTextStyle.gilroyBoldW426titelcolor,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "password",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
                  PasswordTextformfild(
                    isHide: editProfileController.passwordhide.value,
                    hintText: 'Enter your password',
                    onTapSurffix: () {
                      editProfileController.passwordhide.value =
                          !(editProfileController.passwordhide.value);
                    },
                    suffixicon: Icon(
                      editProfileController.passwordhide.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    "confirm password",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
                  PasswordTextformfild(
                    isHide: editProfileController.passwordhide.value,
                    hintText: 'Enter your confirm password',
                    onTapSurffix: () {
                      editProfileController.passwordhide.value =
                          !(editProfileController.passwordhide.value);
                    },
                    suffixicon: Icon(
                      editProfileController.passwordhide.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: RoundedButton(
                      buttonHeight: 7.h,
                      buttonwidth: 50.w,
                      onchange: () {},
                      btnName: "Save",
                      textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ));
    },
  );
}
