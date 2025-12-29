import 'package:distrobo1/app/profile/controlar/edit_profile_controlar.dart';
import 'package:distrobo1/app/profile/screen/profile.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final editProfileController = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              "Edit Profile",
              style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
            ),
          ],
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
              leading:
                  Stack(alignment: AlignmentDirectional.bottomEnd, children: [
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: Mycolor.backgroundcolor),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/profile.png",
                      height: 20.w,
                      width: 15.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Mycolor.buttonTextcolor,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Mycolor.buttoncolor,
                    size: 12,
                  ),
                ),
              ]),
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
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                width: 100.w,
                height: 55.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: editProfileController.editprofileimagelist.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          editProfileController.editprofileimagelist[index],
                          height: 20.w,
                          width: 15.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        editProfileController.editprofilenamelist[index],
                        style: MyTextStyle.gilroyBoldW416titlecolor,
                      ),
                      subtitle: Text(
                        editProfileController.profilesubdetaillist[index],
                        style: MyTextStyle.GilroyRegularW414Textcolor,
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          editProfileController
                              .editprofilespopupList[index](context);
                        },
                        child: Image.asset(
                          "assets/images/edit.png",
                          height: 6.w,
                          width: 6.w,
                        ),
                      ),
                    );
                  },
                ),
              ),
              RoundedButton(
                onchange: () {
                  Get.to(() => Profile());
                },
                btnName: 'Save',
                textStyle: MyTextStyle.gilroyBoldW416buttonTextcolor,
                buttonwidth: 50.w,
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
