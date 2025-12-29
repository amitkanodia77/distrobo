
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  get CreateNewPasswordController => Get.put(CreateNewPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.backgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),

          Text(
            "Create New Password",
            style: MyTextStyle.gilroySemiBoldW418titelcolor,
          ),
          SizedBox(height: 35),
          Text(
            "Create New Password",
            style: MyTextStyle.gilroySemiBoldW418titelcolor,
          ),

          SizedBox(height: 25),
          Text("New Password", style: MyTextStyle.gilroySemiBoldW418titelcolor),

          Textformfild(
            hintText: 'Enter your password',
            

            suffix: Icon(
              CreateNewPasswordController.passwordhide.value
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Conform Password",
            style: MyTextStyle.gilroySemiBoldW418titelcolor,
          ),

          Textformfild(
            hintText: 'Enter your password',
            suffix: Icon(
              CreateNewPasswordController.passwordhide.value
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
            

            // suffixicon: Icon(
            //   loginController.passwordhide.value
            //       ? Icons.visibility_off_outlined
            //       : Icons.visibility_outlined,
            // ),
          ),
        ],
      ),
    );
  }
}
