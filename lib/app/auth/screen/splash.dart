

import 'package:distrobo1/routs/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';




class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState (){
    
    Future.delayed(Duration(milliseconds: 200),(){
      Get.toNamed(RouteName.loginScreen);

    }
    
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              "assets/images/splash.png",
             height: 95.h,width: 100.w,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
