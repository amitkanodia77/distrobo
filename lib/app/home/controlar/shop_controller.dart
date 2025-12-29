import 'package:distrobo1/app/home/screen/candy_snacks.dart';
import 'package:get/get.dart';

class ShopController  extends GetxController {
  List<String> shoplist = [
    "assets/images/ShopCategoryImage1.png",
    "assets/images/ShopCategoryImage2.png",
     "assets/images/ShopCategoryImage3.png",
     "assets/images/ShopCategoryImage4.png",
   
  ].obs;
  List<String> shopnamelist = [
   "Candy & Snacks",
    "Vitamins & Energy Boosters",
    " Personal &Health Care",
     
     "Home Goods & Supplies",
   
  ].obs;
 final List<dynamic> screenList=[
  CandySnacks(),
  
  
  
].obs;


}