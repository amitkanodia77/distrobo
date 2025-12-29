
import 'package:distrobo1/app/auth/controlar/login_controller.dart';
import 'package:distrobo1/app/auth/screen/forgot%20_password.dart';
import 'package:distrobo1/app/auth/screen/singup.dart';
import 'package:distrobo1/app/home/screen/bottom_navigation_bar.dart';

import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/password_Textformfild.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = Get.put(LoginController());
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
            child: Obx(()=>
               Column(
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
              
                  Text("Login", style: MyTextStyle.gilroyBoldW426titelcolor),
                  SizedBox(height: 3.w),
                  Text(
                    "Enter your emails and password",
                    style: MyTextStyle.gilroyMediumW416subtitelcolor,
                  ),
                  SizedBox(height: 35.px),
              
                  Text("Email", style: MyTextStyle.gilroySemiBoldW418titelcolor),
              
                  Textformfild(
                    hintText: 'Enter your email',
                    
                    
                  ),
                  SizedBox(height: 25.px),
                  Text( 
                    "Password",
                    style: MyTextStyle.gilroySemiBoldW418titelcolor,
                  ),
              
                  PasswordTextformfild(
                    isHide: loginController.passwordhide.value,
                    hintText: 'Enter your password',
                    onTapSurffix: () {
                      loginController.passwordhide.value = !(loginController.passwordhide.value);
                    
                    },
                  
                    suffixicon: Icon(
                      loginController.passwordhide.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                  SizedBox(height: 15.px),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ForgotPassword());
                          
                        },
                        child: Text(
                          "Forgot Password?",
                          style: MyTextStyle.gilroyMediumW414buttoncolor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
              
                  RoundedButton(
                    btnName: "Log In",
              
              
                    btnColor: Mycolor.buttoncolor,
              
                    onchange: () {
                       Get.to(() => Bottomnavigationbar());
                    },
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(onTap: () {
                        Get.to(() => Singup());
                        
                      },
                        child: RichText(
                          text: TextSpan(
                            text: 'Don’t have an account? ',
                            style: MyTextStyle.gilroyMediumW414titlecolor,
                        
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Singup',
                                style: MyTextStyle.gilroyMediumW414buttoncolor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
