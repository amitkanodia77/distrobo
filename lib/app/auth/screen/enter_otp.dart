
import 'package:distrobo1/app/auth/controlar/otp_controller.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({super.key});

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  final nameController = Get.put(OtpController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Mycolor.backgroundcolor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontFamily: "GilroyBold",
                  color: Mycolor.titlecolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 3.w),
              Text(
                "Please enter your email address to request a password reset",
                style: TextStyle(
                  fontFamily: "GilroyMedium",
                  fontSize: 15,
                  color: Mycolor.subtitelcolor,
                ),
              ),
               SizedBox(height: 15.w,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
                  Container(
                    height: 50,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 50,
                          
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: TextField(
                            
                            style: TextStyle(
                              color: Mycolor.buttoncolor,
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                        
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                        
                            maxLength: 1,
                        
                            decoration: InputDecoration(
                              counterText: "",
                        
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Mycolor.buttoncolor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Mycolor.focascolor,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
               SizedBox(height: 10.w,),
              RoundedButton(onchange: () {
                  // Get.to(() => EnterOtp());
                  
                }, btnName: 'Sing Up'),
                
            ],
          ),
        ),
      ),
    );
  }
}
