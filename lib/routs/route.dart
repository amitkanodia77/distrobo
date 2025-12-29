
import 'package:distrobo1/app/auth/screen/enter_otp.dart';
import 'package:distrobo1/app/auth/screen/forgot%20_password.dart';
import 'package:distrobo1/app/auth/screen/login_screen.dart';
import 'package:distrobo1/app/auth/screen/singup.dart';
import 'package:distrobo1/app/auth/screen/splash.dart';
import 'package:distrobo1/app/home/screen/bottom_navigation_bar.dart';
import 'package:distrobo1/app/home/screen/candy_snacks.dart';
import 'package:distrobo1/app/profile/screen/edit_profile.dart';

import 'package:distrobo1/routs/route_name.dart';

import 'package:get/get.dart';

class Routee {
  static  List<GetPage<dynamic>>  routeList = [

    GetPage(
      name: RouteName.splash, 
    page: ()=> const Splash(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(
      name: RouteName.loginScreen, 
    page: ()=> const LoginScreen(),
    transitionDuration: const Duration(milliseconds: 500)
    ),
    GetPage(
      name: RouteName.singUp, 
    page: ()=> const Singup(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(
      name: RouteName.forgotPassword, 
    page: ()=> const ForgotPassword(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(
      name: RouteName.enterOtp, 
    page: ()=> const EnterOtp(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(
      name: RouteName.bottomnavigationbar, 
    page: ()=> const Bottomnavigationbar(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(
      name: RouteName.candySnacks, 
    page: ()=> const CandySnacks(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(
      name: RouteName.editProfile, 
    page: ()=> const EditProfile(),
    transitionDuration: const Duration(milliseconds: 400)
    ),
    
  ];
}