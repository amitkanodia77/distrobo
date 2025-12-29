
import 'package:distrobo1/app/auth/controlar/forget_password_controller.dart';
import 'package:distrobo1/app/auth/screen/enter_otp.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = Get.put(ForgetPasswordController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScope.of(context).unfocus();
    },
      child: Scaffold(
        backgroundColor: Mycolor.backgroundcolor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
            Text(
                  "Forgot Password",
                  style: MyTextStyle.gilroyBoldW426titelcolor
                  
                  
                ),
                SizedBox(height: 3.w),
                Text(
                  "Please enter your email address to request a password reset",
                  style: MyTextStyle.gilroyMediumW416subtitelcolor
                  
                  
                ),
                SizedBox(height: 35.px),
            
                Text("Email", 
                style: MyTextStyle.gilroySemiBoldW418titelcolor,
                ),
                
                Textformfild(hintText: 'Enter your email', 
                ),
                SizedBox(height: 10.w),
                 RoundedButton(onchange: () { Get.to(() => EnterOtp()); }, btnName: 'Send',
          
                  ),
            
          ],),
        ),
      ),
    );
  }
}