import 'package:distrobo1/app/home/controlar/my_cart_controller.dart';
import 'package:distrobo1/app/home/screen/shipping_address.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/textformfild.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final MyCartController myCartController = Get.put(MyCartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              myCartController.isWishlistEmpty.value
                  ? mycartEmpty()
                  : mycartitemlist(),
            ],
          ),
        ),
      ),
    );
  }

  Widget mycartitemlist() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios)),
            Text(
              "My Cart",
              style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
            ),
            Icon(
              Icons.delete,
              color: Mycolor.redcolor,
            )
          ],
        ),
         SizedBox(height: 3.w,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal: \$49.98",
              style: MyTextStyle.gilroySemiBoldW418titelcolor,
            ),
            Text(
              "2 Items",
              
              style: MyTextStyle.GilroySemiBoldW410backgroundcolor.copyWith(
                  color: Mycolor.rupaycolor,fontSize: 14),
            ),
          ],
        ),
        SizedBox(height: 3.w,),
        RoundedButton(
            onchange: () {
              Get.to(() => ShippingAddress());
            },
            btnName: "Schedule Delivery"),
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            itemCount: 10,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SizedBox(height: 15.h,
                child: ListTile(
                  
               dense: true,
                  visualDensity: VisualDensity(vertical: -2),
                  leading: Image.asset("assets/images/Snacks.png"),
                  title: Text("Alien Jerky Weed Killer Hot Beef 3.25oz",
                  maxLines: 2,textAlign: TextAlign.start,

                  ),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$24.99",
                      style: MyTextStyle.gilroyBoldW426rupaycolor,
                      ),
                     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/minus.png",
        height: 7.w,width: 7.w,
        ),
        SizedBox(width: 5.w,),
        Text("1",
          // "${controller.quantity.value} ",
          style: MyTextStyle.gilroySemiBoldW418titelcolor,
        ),
        SizedBox(width: 5.w,),
        Image.asset("assets/images/plus.png",
        height: 7.w,width: 7.w,
        )
      ],
    ),
    
                    ],
                  ),
                  trailing: Icon(Icons.delete,color: Mycolor.redcolor,size: 5.w,),
                  
                )
              );
            },
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Coupon Code",
              style: MyTextStyle.gilroySemiBoldW418titelcolor,
            ),
            SizedBox(
              height: 1.w,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(20),
              padding: EdgeInsets.all(0),
              strokeWidth: 3,
              color: Mycolor.buttoncolor,
              child: Textformfild(
                suffix: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Apply",
                    style: MyTextStyle.gilroyBoldW416buttonTextcolor.copyWith(
                      color: Mycolor.buttoncolor,
                    ),
                  ),
                ),
                hintText: 'Enter coupon code here',
              ),
            )
          ],
        )
      ],
    );
  }

  Widget mycartEmpty() {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios)),
            SizedBox(
              width: 30.w,
            ),
            Text(
              "My Cart",
              style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Image.asset("assets/images/mycartimage.png"),
        Text(
          "No Data Found!",
          style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
        )
      ],
    );
  }
}
