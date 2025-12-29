
import 'package:distrobo1/app/auth/controlar/singup_controller.dart';
import 'package:distrobo1/app/auth/screen/enter_otp.dart';
import 'package:distrobo1/app/auth/screen/login_screen.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  final LoginController2 loginController2 = Get.put(LoginController2());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Mycolor.backgroundcolor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  heightFactor: 2,
                  child: Image.asset(
                    "assets/images/DistroBo.png",
                    height: 13.h,
                    width: 13.h,
                  ),
                ),
                Text(
                  "Sign Up",
                  style:MyTextStyle.gilroyBoldW426titelcolor
                  
                   
                ),
                SizedBox(height: 3.w),
                Text(
                  "Enter your credentials to continue",
                  style: MyTextStyle.gilroyMediumW416subtitelcolor,
                ),
                SizedBox(height: 35.px),
                Text(
                  "First Name",
                  style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),

                Textformfild(hintText: 'Enter fist name'),

                SizedBox(height: 25.px),
                Text(
                  "Last Name",
                  style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),

                Textformfild(hintText: 'Enter last name'),

                SizedBox(height: 25.px),
                Text(
                  "Business Type",
                  style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Mycolor.unfocascolor,
                      ),
                    ),
                    filled: true,
                    fillColor: Mycolor.transparent,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Mycolor.unfocascolor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Mycolor.focascolor,
                      ),
                    ),

                    hintText: 'Other',
                    hintStyle: TextStyle(color: Mycolor.hinttextcolor),
                  ),
                  dropdownColor: Colors.white70,
                  items: loginController2.dropdownlist.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                  value: loginController2.newValue.value,

                  onChanged: (selectedValue) {
                    selectedValue = loginController2.newValue.value;
                  },
                ),
                SizedBox(height: 5.w,),
                Text(
                  "Email",
                  style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),

                Textformfild(hintText: 'Enter your email'),
                SizedBox(height: 5.w,),
                Text(
                  "Password",
                  style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),

                Textformfild(
                  hintText: 'Enter your Password',
                  suffix: Icon(
                    loginController2.passwordhide.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
                SizedBox(height: 5.w,),
                Text(
                  "Conform Password",
                  style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),

                Textformfild(
                  hintText: 'Enter your conform password',
                  suffix: Icon(
                    loginController2.passwordhide.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
                SizedBox(height: 10.w,),

                RoundedButton(onchange: () {
                  Get.to(() => EnterOtp());
                  
                }, btnName: 'Sing Up'),
                SizedBox(height: 15.w,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => LoginScreen());
                        // Get.back();
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontFamily: "GilroyMedium",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Mycolor.titlecolor,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "GilroyMedium",
                                color: Mycolor.buttoncolor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
