import 'package:distrobo1/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(8),
      child: Column(children: [
        Row(
                    
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios)),
                          SizedBox(width: 20.w,),
                      Text(
                        "My Order",
                        style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
                      ),
                      
                    ],
                  ),

                  Container(
                    height: 30.h,
                    child: Column(children: [
                      Text("data")
                    ],),
                  )
      ],),
      ),
    );
  }
}