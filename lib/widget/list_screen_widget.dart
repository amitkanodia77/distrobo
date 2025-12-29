import 'package:distrobo1/app/home/screen/candy_snacks.dart';
import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:distrobo1/widget/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget wishlistEmpty() {
  return Center(
      child: Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 22.h,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/mylistimage.png",
              color: Mycolor.buttoncolor,
            ),
            Text(
              "No Wishlist yet",
              style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
            ),
            Container(
              width: 40.h,
              child: Text(
                "You don't currently have anything in your Wish List.",
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: MyTextStyle.GilroyRegularW414Textcolor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RoundedButton(
              buttonwidth: 20.h,
              textStyle: MyTextStyle.gilroySemiBoldW418backgroundcolor,
              onchange: () {},
              btnName: 'Add Items',
            )
          ],
        ),
      ],
    ),
  ));
}

Widget shoppingList() {
  return Padding(
    padding: const EdgeInsets.all(0),
    child: Column(
      children: [
        SizedBox(height: 10,),
        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shopping list 1",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CandySnacks());
                      },
                      child: Row(
                        children: [
                          Text(
                            "2 Items",
                            style: MyTextStyle.gilroyMediumW414itemcolor,
                          ),
                          SizedBox(width: 3.w,),
                          Text(
                            "See All",
                            style: MyTextStyle.gilroySemiBoldW414redcolor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.w,
                ),
                Container(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(
                        imageUrl: 'assets/images/Candy.png', onAdd: () {  },
                      );
                    },
                  ),
                ),
                 SizedBox(height: 4.h,),
                Divider(
                  color: Mycolor.dividercolor,
                  thickness:2,
                ),
                SizedBox(height: 4.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shopping list 2",
                      style: MyTextStyle.gilroyBoldW416titlecolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CandySnacks());
                      },
                      child: Row(
                        children: [
                          Text(
                            "2 Items",
                            style: MyTextStyle.gilroyMediumW414itemcolor,
                          ),
                          SizedBox(width: 3.w,),
                          Text(
                            "See All",
                            style: MyTextStyle.gilroySemiBoldW414redcolor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                    SizedBox(
                  height: 3.w,
                ),
                Container(
                  height: 33.h,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Items(
                        imageUrl: 'assets/images/Candy.png', onAdd: () {  },
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.h,),

                Divider(
                  color: Mycolor.dividercolor,
                  thickness: 2,
                ),
                SizedBox(height: 4.h,),

      ],
    ),
  );
}

Widget listScreenAppBar(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(onTap: () {}, child: Icon(Icons.arrow_back_ios)),
      Text(
        title,
        style: MyTextStyle.GilroySemiBoldW420itemsTextcolor,
      ),
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          "assets/images/bell.png",
          color: Mycolor.buttoncolor,
          height: 20,
          width: 20,
        ),
      ),
    ],
  );
}