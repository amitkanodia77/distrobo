import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppDrawerController  extends GetxController {

 final List<IconData> iconList = [
    Icons.home,
Icons.info ,       
Icons.calculate , 
Icons.lock_outline,
Icons.view_list_outlined,
Icons.favorite_border ,
Icons.call_outlined ,  
Icons.location_on ,
Icons.settings ,   
  ].obs;

   var titleList = <String>[
    "Home",
    "About Us",
    "new arrival",
    "Password",
    "My Orders",
    "my List",
    "Contact Us",
    "Our Location",
    "Our Service",
  ].obs;

}