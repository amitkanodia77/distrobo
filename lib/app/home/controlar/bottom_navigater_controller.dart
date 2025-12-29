
import 'package:distrobo1/app/home/screen/home_screen.dart';
import 'package:distrobo1/app/home/screen/my_cart.dart';
import 'package:distrobo1/app/home/screen/my_list.dart';

import 'package:distrobo1/app/home/screen/shop.dart';
import 'package:distrobo1/app/profile/screen/profile.dart';
import 'package:get/get.dart';


class BottomNavigaterController extends GetxController {
  RxInt screenindex =0.obs;
 
final List<dynamic> screenList=[
  HomeScreen(),
  Shop(),
  MyList(),
  MyCart(),
  Profile(),
  
];

  
}