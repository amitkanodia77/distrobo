
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CandysSnacksList extends StatefulWidget {
  const CandysSnacksList({super.key});

  @override
  State<CandysSnacksList> createState() => _CandysSnacksListState();
}

class _CandysSnacksListState extends State<CandysSnacksList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(children: [
          Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      }, child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Candy & Snacks",
                    style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Candy & Snacks 1",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => CandySnacks());
                      },
                      child: Text(
                        "See All",
                        style: MyTextStyle.gilroySemiBoldW414redcolor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                height: 2.h,
              ),
                SizedBox(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(imageUrl: 'assets/images/Snacks.png', onAdd: () {  },);
                    },
                  ),
                ),
                SizedBox(
                height: 2.h,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Candy & Snacks 2",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => CandySnacks());
                      },
                      child: Text(
                        "See All",
                        style: MyTextStyle.gilroySemiBoldW414redcolor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                height: 2.h,
              ),
              SizedBox(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(imageUrl: 'assets/images/Snacks.png', onAdd: () {  },);
                    },
                  ),
                ),
                 SizedBox(
                height: 2.h,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Candy & Snacks 3",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => CandySnacks());
                      },
                      child: Text(
                        "See All",
                        style: MyTextStyle.gilroySemiBoldW414redcolor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                height: 2.h,
              ),
              SizedBox(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(imageUrl: 'assets/images/Snacks.png', onAdd: () { 
                        
                       },);
                    },
                  ),
                ),
                SizedBox(height: 10,)


        ],),),
      ),
    );
  }
}